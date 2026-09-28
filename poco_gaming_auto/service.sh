#!/system/bin/sh
MODDIR=${0%/*}

if [ -z "$BG" ]; then
  BG=1 /system/bin/sh "$0" >/data/local/tmp/poco_gaming_auto.log 2>&1 &
  exit 0
fi

STATE="$MODDIR/state"
GAMES="com.tencent.ig com.tencent.igfit com.pubg.imobile com.vng.pubgmobile com.rekoo.pubgm com.pubg.krmobile"
mkdir -p "$STATE"

getgov() { cat "$1" 2>/dev/null; }
setgov() { [ -w "$1" ] && echo "$2" > "$1" 2>/dev/null; }

is_game() {
  for g in $GAMES; do
    pidof "$g" >/dev/null 2>&1 && return 0
  done
  return 1
}

apply_game() {
  echo 1 > "$STATE/active"
  rm -f "$STATE"/cpu_* "$STATE/gpu_gov"

  for p in /sys/devices/system/cpu/cpufreq/policy*/scaling_governor; do
    [ -f "$p" ] || continue
    b=${p%/scaling_governor}; n=${b##*/}
    getgov "$p" > "$STATE/cpu_$n"
    av=$(cat "${p%scaling_governor}scaling_available_governors" 2>/dev/null)
    echo "$av" | grep -qw performance && setgov "$p" performance
  done

  g=/sys/class/kgsl/kgsl-3d0/devfreq/governor
  if [ -f "$g" ]; then
    getgov "$g" > "$STATE/gpu_gov"
    av=$(cat /sys/class/kgsl/kgsl-3d0/devfreq/available_governors 2>/dev/null)
    echo "$av" | grep -qw performance && setgov "$g" performance
  fi
}

restore() {
  for f in "$STATE"/cpu_*; do
    [ -f "$f" ] || continue
    n=${f##*/cpu_}
    p=/sys/devices/system/cpu/cpufreq/$n/scaling_governor
    [ -f "$p" ] && setgov "$p" "$(cat "$f" 2>/dev/null)"
  done

  g=/sys/class/kgsl/kgsl-3d0/devfreq/governor
  [ -f "$STATE/gpu_gov" ] && [ -f "$g" ] && setgov "$g" "$(cat "$STATE/gpu_gov" 2>/dev/null)"

  rm -f "$STATE/active" "$STATE"/cpu_* "$STATE/gpu_gov"
}

while [ "$(getprop sys.boot_completed)" != "1" ]; do sleep 2; done
sleep 8

while true; do
  if is_game; then
    [ -f "$STATE/active" ] || apply_game
  else
    [ -f "$STATE/active" ] && restore
  fi
  sleep 3
done

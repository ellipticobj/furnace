COPR=(
  solopasha/hyprland
  erixreider/SwayNotificationCenter
  errornointernet/packages
  tofix/nwg-shell
)

for repo in "${COPR[@]}"; do
  sudo dnf copr enable -y "$repo" 2>$1
done

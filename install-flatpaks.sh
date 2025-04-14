FLATPAKS=(
  "app.zen_browser.zen"
)

for pak in "${FLATPAKS[@]}"; do
  if ! flatpak list | grep -i "$pak" &> /dev/null; then
    echo "installing flatpak: $pak"
    flatpak install --noninteractive "$pak"
  else
    echo "flatpak already installed: $pak"
  fi
done

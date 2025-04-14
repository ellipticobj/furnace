if wget -q https://github.com/g5becks/Cartograph/archive/refs/heads/main.zip; then
    mkdir -p "$HOME/.local/share/fonts/CartographCF/" && unzip -o -q "main.zip" -d "$HOME/.local/share/fonts/CartographCF/" && echo "Cartograph CF installed successfully"
else
    echo
    echo "failed to download cartograph CF :("
fi

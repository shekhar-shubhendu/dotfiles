cp settings.json ~/.config/Code/User/settings.json
echo "✔ copied vscode settings"

for x in $(cat extensions.txt); do code --install-extension $x; done
echo "✔ vscode setup done"
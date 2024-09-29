sudo dnf check-update
sudo dnf upgrade --refresh -y

sudo dnf install polybar rofi git virtualbox-guest-additions -y

mkdir JetBrainsMono
cd JetBrainsMono
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
unzip JetBrainsMono.zip

cd ..
sudo cp -r JetBrainsMono/ /usr/share/fonts/
fc-cache -f -v

git clone https://github.com/alcrmel/dotfiles.git
cp dotfiles/i3 .config/i3
cp dotfiles/polybar .config/polybar
cp dotfiles/rofi .config/polybar

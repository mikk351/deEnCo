sudo pacman -Sy chromium flameshot code docker docker-compose nodejs npm python-pip fish fzf peek --noconfirm
sudo pacman -Sy base-devel

sudo systemctl enable docker
sudo systemctl start docker

chsh -s /usr/bin/fish # Set deffault shell

# Pikaur
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri
cd ..
rm -R pikaur

# install? flatpak
#pikaur -S spotify sublime-text-dev --noconfirm
#pikaur -S pulseaudio-dlna --noconfirm

# drawing
#flatpak install flathub com.github.maoschanz.drawing

# SmartCard
#pikaur -S qdigidoc4 chrome-token-signing --noconfirm
#sudo systemctl enable pcscd && sudo systemctl start pcscd


sudo systemctl enable docker
sudo systemctl start docker

# Local pip and npm
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'

# Add user bin to path $HOME/.local/bin
printf '#!/bin/bash\nPATH=$PATH:$HOME/.local/bin:$HOME/.npm-global/bin\n' | sudo tee -a /etc/profile.d/custom.sh > /dev/null
source /etc/profile.d/custom.sh
sudo chmod a+x /etc/profile.d/  

# For fish
#printf '\nset -gx PATH $PATH:$HOME/.local/bin:$HOME/.npm-global/bin\n' | tee -a ~/.config/fish/config.fish > /dev/null
# rm ~/.config/autostart/create-template.desktop # generates empty files

# Hide items
echo snap >> ~/.hidden

pip install --user docker-compose
npm install -g @angular/cli @vue/cli http-server

echo Fetching steam
wget https://cdn.fastly.steamstatic.com/client/installer/steam.deb
echo Installing .deb
sudo dpkg -i steam.deb
echo Done!. Look for steam in your start menu (Or how you call it) Or just run "steam".

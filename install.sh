sudo apt-get install -y pocketsphinx;
sudo apt-get update;sudo apt-get dist-upgrade;
sudo apt-get install pavucontrol linux-sound-base alsa-base alsa-utils lightdm ubuntu-desktop  linux-image-`uname -r` libasound2;
sudo apt-get -y --reinstall install linux-sound-base alsa-base alsa-utils lightdm ubuntu-desktop  linux-image-`uname -r` libasound2;
killall pulseaudio;
rm -r ~/.pulse*;
ubuntu-support-status;
sudo usermod -aG `cat /etc/group | grep -e '^pulse:' -e '^audio:' -e '^pulse-access:' -e '^pulse-rt:' -e '^video:' | awk -F: '{print $1}' | tr '\n' ',' | sed 's:,$::g'` `whoami`;
sudo apt-get install pulseaudio;
sudo apt-get install libpulse-dev
sudo apt-get install osspd
sudo apt-get install build-essential
sudo mkdir /usr/local/share/pocketsphinx/model/en-us
git clone https://github.com/cmusphinx/pocketsphinx.git
cd pocketsphinx && cmake -S . -B build && cmake --build build &&sudo cmake --build build --target install

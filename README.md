# Asterix

# Means to an End
Asterix is my adaptation of Universal Blue Aurora.
It is:
-  based on the 'latest' branch of Aurora
-  meant to stay as close as possible to the original image
-  only some minor adjustments have been made by me, notably:
-    addition of midnight commander, krusader and konsole
-    removal of ptyxis, kcharselect, kdeconnect, kfind, kwallet, filelight, skanpage, solaar, input-remapper and plasma-discover

Of course all other applications need to be installed, either with flatpak, homebrew or distrobox. The removed are 95% available as flatpak as well.

I personally don't like software stores, so flatpaks need to be installed from the terminal as well.

# How to:
-  Install any Fedora Atomic or Universal Blue image (I've used the Bluefin iso and Fedora Sway Atomic) and then:

      rpm-ostree rebase ostree-unverified-registry:ghcr.io/thesaigoneer/asterix:latest

      systemctl reboot

      rpm-ostree rebase ostree-image-signed:docker://ghcr.io/thesaigoneer/asterix:latest

      systemctl reboot

That should do it.

# Reminder

Feel free to use these builds. I do not, however, offer or imply any form of support or ongoing maintenance. And of course, you use them entirely at your own risk. Have fun!


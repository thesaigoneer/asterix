# Asterix

# Purpose
Asterix is my adaptation of Universal Blue Aurora.
It is:
-  based on the 'latest' branch of Aurora
-  meant to stay as close as possible to the original image
-  only some minor adjustments have been made by me, notably:
-    removing Ptyxis as the terminal;
-    addition of Midnight Commander, Krusader and Konsole
-    removal of

# How to:
-  Install any Fedora Atomic or Universal Blue image (I've used the Bluefin iso and Fedora Sway Atomic) and then:

  rpm-ostree rebase ostree-unverified-registry:ghcr.io/thesaigoneer/asterix:latest

  systemctl reboot

  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/thesaigoneer/asterix:latest

  systemctl reboot

That should do it.

# Reminder

Feel free to use these builds. I do not, however, offer or imply any form of support or ongoing maintenance. And of course, you use them entirely at your own risk. Have fun!


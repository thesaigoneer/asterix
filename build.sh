!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
rpm-ostree install screen
# Layered Applications
LAYERED_PACKAGES=(
    mc
    krusader
    konsole
)
dnf5 install -y "${LAYERED_PACKAGES[@]}"

REMOVED_PACKAGES=(
    filelight
    input-leap
    input-remapper
    kcharselect
    kdebugsettings
    kde-connect
    kde-connect-libs
    kdeconnectd
    kfind
    kjournald
    kwallet
    plasma-discover
    plasma-discover-rpm-ostree
    plasma-discover-notifier
    plasma-discover-flatpak
    plasma-discover-offline-updates
    ptyxis
    skanpage
    solaar
)
dnf5 remove -y "${REMOVED_PACKAGES[@]}"
# this would install a package from rpmfusion
# rpm-ostree install vlc

#### Example for enabling a System Unit File

systemctl enable podman.socket

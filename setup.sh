# Generate signing key
pacman-key --init
# Update distro packages
pacman -Syu --noconfirm

# Create builder user
pacman -S --needed --noconfirm git sudo
useradd builder -m
passwd -d builder
printf '\nbuilder ALL=(ALL) ALL\n' | tee -a /etc/sudoers
chown -R builder:builder pkgs

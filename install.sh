set -e

echo "Installing Chromebook Dell Latitude 7410 keyboard remap fix..."
sudo cp chromebook.hwdb /etc/udev/hwdb.d/

sudo systemd-hwdb update
sudo udevadm trigger

echo "Done! Please reboot or re-login for changes to take effect."
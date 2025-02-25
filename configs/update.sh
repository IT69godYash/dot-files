#!/bin/bash

echo "🔄 Updating system..."
sudo dnf update -y

echo "🧹 Cleaning up package cache..."
sudo dnf clean all

echo "  Upgrading all packages..."
sudo dnf upgrade -y

echo "🖥️ Updating CPU microcode..."
sudo dnf install -y linux-firmware microcode_ctl

echo "🎮 Updating NVIDIA drivers..."
sudo dnf install -y akmod-nvidia xorg-x11-drv-nvidia-cuda # W: Un…

echo "🛠️ Updating essential development tools..."
sudo dnf groupinstall -y "Development Tools" # W: Unknown word (g…

echo "🔧 Checking for broken dependencies..."
sudo dnf check all

echo "🗑️ Removing unnecessary packages..."
sudo dnf autoremove -y # W: Unknown word (autoremove)

echo "✅ All updates and upgrades completed!"

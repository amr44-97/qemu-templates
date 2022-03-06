#!/usr/bin/env bash
qemu-system-x86_64 -enable-kvm -m 4G\
    -bios /usr/share/ovmf/x64/OVMF_CODE.fd \
    -cdrom jammy-desktop-amd64.iso \
    -cpu host -M q35  -smp 2  \
    -boot menu=on -rtc base=localtime \
    -device intel-hda  -drive file=ubuntu-amd64_22.img \
    -usb -device usb-tablet -vga virtio \
    -display sdl,gl=on \
    -net nic -net bridge,br=br10



#!/bin/bash

#prerequsite
sudo apt update
sudo apt install libfuse2 libapr1 libaprutil1 libasound2t64 libglib2.0-0 libglu1-mesa
sudo apt install libxcb-cursor0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-render-util0 libxcb-xinerama0 libxcb-xinput0 libxkbcommon-x11-0 libxcb-randr0 libxcb-shape0 libxcb-xfixes0
unzip DaVinci_Resolve_*_Linux.zip
sudo SKIP_PACKAGE_CHECK=1 ./DaVinci_Resolve_*_Linux.run -i

#fix

libraries=(
  "libglib-2.0.so.0"
  "libgobject-2.0.so.0"
  "libgstreamer-1.0.so.0"
  "libgstsdp-1.0.so.0"
  "libgstwebrtc-1.0.so.0"
  "libgio-2.0.so.0"
  "libgmodule-2.0.so.0"
  "libgstrtp-1.0.so.0"
  "libgstpbutils-1.0.so.0"
  "libgstbase-1.0.so.0"
  "libgstvideo-1.0.so.0"
  "libgstaudio-1.0.so.0"
  "libgsttag-1.0.so.0"
  "liborc-0.4.so.0"
)
for lib in "${libraries[@]}"; do
  ln -sf "/usr/lib/x86_64-linux-gnu/$lib" /opt/resolve/libs/
done

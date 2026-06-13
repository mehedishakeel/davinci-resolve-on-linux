# DaVinci Resolve on Linux

Simple installation scripts for running **DaVinci Resolve** on various Linux distributions.

## Currently Supported

* Ubuntu 26.04 LTS (NVIDIA GPU / AMD GPU)

Additional distributions and GPU configurations will be added over time.

---

## Prerequisites

* For NVIDIA GPU : Drivers + CUDA
* For AMD GPU : Drivers + ROCm

---

## Installation

### 1. Download DaVinci Resolve

Download the latest Linux version of DaVinci Resolve from the official [Blackmagic Design website](https://www.blackmagicdesign.com/products/davinciresolve).

### 2. Download the Installation Script

Download `ubuntu.sh` from [here](https://raw.githubusercontent.com/mehedishakeel/davinci-resolve-on-linux/refs/heads/main/ubuntu.sh).

### 3. Place Files in the Same Directory

Make sure both files are located in the same folder:

```text
Downloads/
├── DaVinci_Resolve_*.zip
└── ubuntu.sh
```

### 4. Make the Script Executable

```bash
chmod +x ubuntu.sh
```

### 5. Run the Script

```bash
./ubuntu.sh
```

The script will automatically prepare the system and install DaVinci Resolve.

---

## Notes

* The DaVinci Resolve ZIP installer and `ubuntu.sh` **must be in the same directory** before running the script.
* Run the script from the directory containing both files.
* Ensure your NVIDIA drivers are properly installed and working before installation.

---

## Disclaimer

This project is not affiliated with or endorsed by Blackmagic Design. DaVinci Resolve is a trademark of Blackmagic Design Pty. Ltd.

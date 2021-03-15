# ManjaroInstall

These are the initial UEFI BIOS setting you should enable on your PC before you install Manjaro KDE Plasma on a your PC.

1. Change the SATA Mode from the default "RAID" to "AHCI", This will allow Linux to detect an NVME SSD. If dual booting with an existing Windows installation, Windows
will not boot after the change but this can be fixed without a reinstallation.

2. Disable secure boot to allow Linux to boot.

3. For reliabe resumption from sleep, disable both "Sign of Life" options, i.e. set "Early Logo Dislpay" and "Early Keyboard Backlight to OFF.

4. (Optional) Booting and installing from a microSD card is possible, as long as SD Card and SD Card Boot are both enable in the UEFI setup.
    This is done via "System Configuration under the heading "Enable MediaCard", enable the option "Secure Digital(SD) Card Boot."


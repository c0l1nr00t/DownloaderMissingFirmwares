# DownloaderMissingFirmwares
Basic script in bash for download missing firmwares

# Downloader Missing Firmwares Only i9
When you execute 

    sudo update-initramfs -u

and you recive 

![Missing](https://drive.google.com/file/d/1T7UUut7QDcZCqLPU4MPiE3RBarnPi0xS/view?usp=sharing)

Copy the output and create your file like firmwares and execute the script.
if you execute the script like root the script will copy to /lib ... if not you have a error.

finally

    sudo update-initramfs -u

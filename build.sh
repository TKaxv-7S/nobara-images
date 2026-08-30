#!/bin/bash

VERSION="44"
mkdir complete

livemedia-creator --ks nv-flat-nobara-live-official-44.ks --no-virt --resultdir ./release --project Nobara --make-iso --volid Nobara-44 --iso-only --iso-name Nobara-44-Official-NV-$(date +%F).iso --releasever 43 --macboot --extra-boot-args "modules_load=nvidia"
mv ./release/*.iso ./complete
rm -Rf ./release

livemedia-creator --ks nv-flat-nobara-live-gnome-44.ks --no-virt --resultdir ./release --project Nobara --make-iso --volid Nobara-44 --iso-only --iso-name Nobara-44-GNOME-NV-$(date +%F).iso --releasever 43 --macboot --extra-boot-args "modules_load=nvidia"
mv ./release/*.iso ./complete
rm -Rf ./release

livemedia-creator --ks nv-flat-nobara-live-kde-44.ks --no-virt --resultdir ./release --project Nobara --make-iso --volid Nobara-44 --iso-only --iso-name Nobara-44-KDE-NV-$(date +%F).iso --releasever 43 --macboot --extra-boot-args "modules_load=nvidia"
mv ./release/*.iso ./complete
rm -Rf ./release

livemedia-creator --ks nv-flat-nobara-live-steam-htpc-44.ks --no-virt --resultdir ./release --project Nobara --make-iso --volid Nobara-44 --iso-only --iso-name Nobara-44-Steam-HTPC-NV-$(date +%F).iso --releasever 43 --macboot --extra-boot-args "modules_load=nvidia" --lorax-templates ./lorax-custom
mv ./release/*.iso ./complete
rm -Rf ./release

livemedia-creator --ks nv-flat-nobara-live-steam-handheld-44.ks --no-virt --resultdir ./release --project Nobara --make-iso --volid Nobara-44 --iso-only --iso-name Nobara-44-Steam-Handheld-$(date +%F).iso --releasever 44 --macboot --extra-boot-args "modules_load=nvidia" --lorax-templates ./lorax-custom
mv ./release/*.iso ./complete
rm -Rf ./release


./sha256gen.sh
chmod -R 777 ./complete


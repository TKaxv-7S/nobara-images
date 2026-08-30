Set up mock build environment:
```
sudo mock -r ./nobara-44-x86_64.cfg --clean
sudo mock -r ./nobara-44-x86_64.cfg --install lorax-lmc-novirt vim-minimal pykickstart
sudo cp ISO-ready-flattened-kickstarts/44/* /var/lib/mock/nobara-44-x86_64/root/builddir/
sudo cp -R lorax-custom /var/lib/mock/nobara-44-x86_64/root/builddir/
sudo mock -r ./nobara-44-x86_64.cfg --shell --enable-network
```

From within mock environment:

Official:
```
# livemedia-creator --ks nv-flat-nobara-live-official-44.ks --no-virt --resultdir ./release --project Nobara --make-iso --volid Nobara-44 --iso-only --iso-name Nobara-44-Official-$(date +%F).iso --releasever 44 --macboot --extra-boot-args "modules_load=nvidia"
```

Gnome:
```
# livemedia-creator --ks nv-flat-nobara-live-gnome-44.ks --no-virt --resultdir ./release --project Nobara --make-iso --volid Nobara-44 --iso-only --iso-name Nobara-44-GNOME-$(date +%F).iso --releasever 44 --macboot --extra-boot-args "modules_load=nvidia"
```

KDE:
```
# livemedia-creator --ks nv-flat-nobara-live-kde-44.ks --no-virt --resultdir ./release --project Nobara --make-iso --volid Nobara-44 --iso-only --iso-name Nobara-44-KDE-$(date +%F).iso --releasever 44 --macboot --extra-boot-args "modules_load=nvidia"
```

Steam HTPC:
```
# livemedia-creator --ks nv-flat-nobara-live-steam-htpc-44.ks --no-virt --resultdir ./release --project Nobara --make-iso --volid Nobara-44 --iso-only --iso-name Nobara-44-Steam-HTPC-$(date +%F).iso --releasever 44 --macboot  --extra-boot-args "modules_load=nvidia" --lorax-templates ./lorax-custom
```
Steam Handheld:
```
livemedia-creator --ks nv-flat-nobara-live-steam-handheld-44.ks --no-virt --resultdir ./release --project Nobara --make-iso --volid Nobara-44 --iso-only --iso-name Nobara-44-Steam-Handheld-$(date +%F).iso --releasever 44 --macboot --extra-boot-args "modules_load=nvidia" --lorax-templates ./lorax-custom
```

exit

sudo mv /var/lib/mock/nobara-44-x86_64/root/builddir/release .

Finished!

Note: instructions pulled from official Fedora documentation:

https://fedoraproject.org/wiki/Livemedia-creator-_How_to_create_and_use_a_Live_CD



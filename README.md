# Creality Ender-3 V3 KE Extracted Firmwares

Comme je n'ai pas encore trouvé les mots de passe des fichiers '.img' des firmwares ( cf https://github.com/CrealityOfficial/Ender-3_V3_KE_Klipper/releases )

Après une mise à jour de ma Ender-3 V3 KE, avec le firmware v1.1.0.12 ( cf https://github.com/CrealityOfficial/Ender-3_V3_KE_Klipper/releases/tag/V1.1.0.12 )

J'ai fait des images des partitions `/dev/mmcblk0p7` et `/dev/mmcblk0p8` avec la commande `dd` et extrais leurs contenus pour peupler ce dépôt.

---
Pour coller avec https://github.com/Guilouz/Creality-K1-Extracted-Firmwares/

## About

You can find the firmware changes for each version:

- [Changes from **1.1.0.9** to **1.1.0.12**](https://github.com/PPAC37/Creality-E3V3KE-Extracted-Firmwares/commit/e9cd2123c24e84216bfb9003d0af40abf628c930)


---

<details>
 <summary>Détail de la méthode utilisé (Cliquez pour déplier!)</summary>

// Connecté en ssh a l'imprimante ( mode root activé via l'ecran de l'imprimante )

~~~
fdisk -l
~~~
<pre>
root@F005-4A88 /root [#] fdisk -l
Found valid GPT with protective MBR; using GPT

Disk /dev/mmcblk0: 15273600 sectors, 3361M
Logical sector size: 512
Disk identifier (GUID): 51254a50-067b-1d83-bde4-6c21babe3e1b
Partition table holds up to 11 entries
First usable sector is 34, last usable sector is 15271935

Number  Start (sector)    End (sector)  Size Name
     1            2048            4095 1024K ota
     2            4096            6143 1024K sn_mac
     3            6144           14335 4096K rtos
     4           14336           22527 4096K rtos2
     5           22528           38911 8192K kernel
     6           38912           55295 8192K kernel2
     7           55296         1079295  500M rootfs
     8         1079296         2103295  500M rootfs2
     9         2103296         2717695  300M rootfs_data
    10         2717696        15271935 6130M userdata
Disk /dev/mmcblk0boot1: 4 MB, 4194304 bytes, 8192 sectors
128 cylinders, 4 heads, 16 sectors/track
Units: sectors of 1 * 512 = 512 bytes

Disk /dev/mmcblk0boot1 doesn't contain a valid partition table
Disk /dev/mmcblk0boot0: 4 MB, 4194304 bytes, 8192 sectors
128 cylinders, 4 heads, 16 sectors/track
Units: sectors of 1 * 512 = 512 bytes

Disk /dev/mmcblk0boot0 doesn't contain a valid partition table
root@F005-4A88 /root 
</pre>


~~~
dd if=/dev/mmcblk0p7 of=/usr/data/dd_mmcblk0p7.img
~~~
<pre>
root@F005-4A88 /root [#] dd if=/dev/mmcblk0p7 of=/usr/data/dd_mmcblk0p7.img
1024000+0 records in
1024000+0 records out
root@F005-4A88 /root [#]
</pre>
~~~
dd if=/dev/mmcblk0p8 of=/usr/data/dd_mmcblk0p8.img
~~~
<pre>
root@F005-4A88 /root [#] dd if=/dev/mmcblk0p8 of=/usr/data/dd_mmcblk0p8.img
1024000+0 records in
1024000+0 records out
root@F005-4A88 /root [#]
</pre>
~~~
mv -v /usr/data/dd_mmcblk0p*.img /tmp/udisk/sda1/
~~~
<pre>
root@F005-4A88 /root [#] mv -v /usr/data/dd_mmcblk0p*.img /tmp/udisk/sda1/
'/usr/data/dd_mmcblk0p7.img' -> '/tmp/udisk/sda1/dd_mmcblk0p7.img'
'/usr/data/dd_mmcblk0p8.img' -> '/tmp/udisk/sda1/dd_mmcblk0p8.img'
root@F005-4A88 /root [#] 
</pre>

Note: Compter 30 à 40 minutes pour faire une image d'une partion de 500 MB ( cela copie aussi les blocs vides ...).  
Et comme je n'ai pas compressé les fichiers '.img' cela prend bien une heure par fichier de 500 MB lors de la copie vers la clé USB d'origine (pas spécialement rapide ...).

---

Ensuite sous un PC sous linux en vrac ...

<pre>
git clone git@github.com:PPAC37/Creality-E3V3KE-Extracted-Firmwares.git

cd Creality-E3V3KE-Extracted-Firmwares

mkdir Firmware

mkdir PartitionImageFiles

echo -e "\n#\PartitionImageFiles\n" >> .gitignore

git add .

// copie de fichier .img de la clé vers un dossier `PartitionImageFiles/2024-02-05/`

// Comme je vais monter les images des partition pour avoir les droits d'explorer integralement les points de montage, je passe en root.
sudo su



mount -o loop PartitionImageFiles/2024-02-05/dd_mmcblk0p7.img Firmware

cat Firmware/etc/ota_info 
ota_version=1.1.0.9
ota_board_name=F005
ota_compile_time=2023 10.09 16:43:20
ota_site=http://192.168.43.52/ota/board_test
     
git add .

git commit -m 1.1.0.9

// comme j'ai fait un sudo su, il me faut mettre dans /root/.ssh les clés de mon home/utisateur/.ssh/ pour mon acces a mon compte github
...

git push

Énumération des objets: 9743, fait.
Décompte des objets: 100% (9743/9743), fait.
Compression par delta en utilisant jusqu'à 4 fils d'exécution
Compression des objets: 100% (7557/7557), fait.
Écriture des objets: 100% (9742/9742), 103.50 Mio | 119.00 Kio/s, fait.
Total 9742 (delta 1644), réutilisés 9742 (delta 1644)
remote: Resolving deltas: 100% (1644/1644), done.
To github.com:PPAC37/Creality-E3V3KE-Extracted-Firmwares.git
   444159b..a9f9ff8  main -> main

// zut je n'avais pas mis de Tag pour plus facilement retrouver la version ...
git tag -a v1.1.0.9 a9f9ff8 -m "Ender-3 V3 KE v1.1.0.9"
     
git push origin v1.1.0.9
Énumération des objets: 1, fait.
Décompte des objets: 100% (1/1), fait.
Écriture des objets: 100% (1/1), 158 octets | 158.00 Kio/s, fait.
Total 1 (delta 0), réutilisés 0 (delta 0)
To github.com:PPAC37/Creality-E3V3KE-Extracted-Firmwares.git

umount Firmware/

mount -o loop PartitionImageFiles/2024-02-05/dd_mmcblk0p8.img Firmware/

cat Firmware/etc/ota_info 
ota_version=1.1.0.12
ota_board_name=F005
ota_compile_time=2023 12.29 18:05:11
ota_site=http://192.168.43.52/ota/board_test

git add .

git commit -m 1.1.0.12
[main e9cd212] 1.1.0.12
 943 files changed, 1728 insertions(+), 440 deletions(-)

git tag -a v1.1.0.12 e9cd212 -m "Ender-3 V3 KE v1.1.0.12"

git push

umount Firmware/

// ctrl+d pour me deloger du sudo su
// Il me faudra donc passer en utilisateur root ou utiliser sudo si je veux réutiliser se dépôt local ?
 
</pre>
</details>



# Creality Ender-3 V3 KE Extracted Firmwares

Comme je n'ai pas encore trouvé le mot de passe des fichiers '.img' des firmwares ( cf https://github.com/CrealityOfficial/Ender-3_V3_KE_Klipper/releases )

Aprés une mise a jour en v1.1.0.12 ( cf https://github.com/CrealityOfficial/Ender-3_V3_KE_Klipper/releases/tag/V1.1.0.12 ) j'ai fait des images des partitions `/dev/mmcblk0p7` et `/dev/mmcblk0p8` avec la commande de `dd` et extrait leur contenus pour peupler se dêpot.

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

Note: Compter 30 a 40 minutes pour faire une image d'une partion de 500 MB ( cela copie aussi les blocks vide ...).  
Et comme je n'ai pas compréssé mes fichiers des images cela prenend bien une heure par fichier de 500 MB lors de la copie vers la clé USB d'origine (surment pas spécialement rapide ...).



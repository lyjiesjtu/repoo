ubuntu@ubuntu:/media/ubuntu$ mount | grep nvme0n1
/dev/nvme0n1p2 on /media/ubuntu/a1877506-3d3d-4d1c-a4bf-edb584842f41 type ext4 (rw,nosuid,nodev,relatime,uhelper=udisks2)
/dev/nvme0n1p2 on /mnt type ext4 (rw,relatime)
ubuntu@ubuntu:/media/ubuntu$ sudo umount /mnt
ubuntu@ubuntu:/media/ubuntu$ sudo umount /media/ubuntu/a1877506-3d3d-4d1c-a4bf-edb584842f41 
ubuntu@ubuntu:/media/ubuntu$ mount | grep nvme0n1
ubuntu@ubuntu:/media/ubuntu$ sudo fsck /dev/nvme0n1p2
fsck from util-linux 2.34
e2fsck 1.45.5 (07-Jan-2020)
/dev/nvme0n1p2: clean, 370942/122068992 files, 13104359/488247296 blocks
ubuntu@ubuntu:/media/ubuntu$ 


ubuntu@ubuntu:~$ sudo fdisk -l
Disk /dev/loop0: 2.23 GiB, 2392006656 bytes, 4671888 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop1: 63.29 MiB, 66359296 bytes, 129608 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop2: 4 KiB, 4096 bytes, 8 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop3: 45.95 MiB, 48160768 bytes, 94064 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop4: 346.34 MiB, 363151360 bytes, 709280 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop5: 49.86 MiB, 52260864 bytes, 102072 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop6: 91.7 MiB, 96141312 bytes, 187776 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/nvme0n1: 1.84 TiB, 2000398934016 bytes, 3907029168 sectors
Disk model: Samsung SSD 970 EVO Plus 2TB            
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: 7E6FB7C0-805F-49B8-A111-06DB7FEDF2B9

Device           Start        End    Sectors  Size Type
/dev/nvme0n1p1    2048    1050623    1048576  512M EFI System
/dev/nvme0n1p2 1050624 3907028991 3905978368  1.8T Linux filesystem


Disk /dev/sda: 57.31 GiB, 61524148224 bytes, 120164352 sectors
Disk model:  SanDisk 3.2Gen1
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x001fa9e5

Device     Boot Start       End   Sectors  Size Id Type
/dev/sda1  *     2048 120164287 120162240 57.3G  c W95 FAT32 (LBA)

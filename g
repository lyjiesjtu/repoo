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

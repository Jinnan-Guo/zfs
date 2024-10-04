# Build and install

Instructions taken from: https://openzfs.github.io/openzfs-docs/Developer%20Resources/Building%20ZFS.html

`sh autogen.sh`

`./configure`,  add `--enable-debug` for printing out the messages with `zfs_dbgmsg` 
`echo 1 >/sys/module/zfs/parameters/zfs_dbgmsg_enable`
`cat /proc/spl/kstat/zfs/dbgmsg` 

`make -s -j$(nproc)`
`sudo make install; sudo ldconfig; sudo depmod` or/and `sudo ./scripts/zfs.sh`

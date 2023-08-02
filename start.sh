#!/bin/sh

echo
echo Testing Sequential Read ...
FIO_RW=read
READ_IOPS=$(fio --name=read_iops --fallocate=none --runtime=5 --directory=$MOUNTPOINT --filename_format=$jobnum.dat  --blocksize=4096 --time_based=1 --ioengine=libaio --iodepth=8 --direct=1 --buffered=0 --thread=0 --numjobs=4 --group_reporting=1 --filesize=2g --size=2g --rw=${FIO_RW})
echo ==========================
echo = Sequential Read Result =
echo ==========================
echo 
echo "$READ_IOPS"
echo
echo
echo Testing Random Read ...
FIO_RW=randread
RANDREAD_IOPS=$(fio --name=randread_iops --fallocate=none --runtime=5 --directory=$MOUNTPOINT --filename_format=$jobnum.dat  --blocksize=4096 --time_based=1 --ioengine=libaio --iodepth=8 --direct=1 --buffered=0 --thread=0 --numjobs=4 --group_reporting=1 --filesize=2g --size=2g --rw=${FIO_RW})
echo ======================
echo = Random Read Result =
echo ======================
echo 
echo "$READ_IOPS"
echo
echo
echo Testing Sequential Write ...
FIO_RW=write
WRITE_IOPS=$(fio --name=write_iops --fallocate=none --runtime=5 --directory=$MOUNTPOINT --filename_format=$jobnum.dat  --blocksize=4096 --time_based=1 --ioengine=libaio --iodepth=8 --direct=1 --buffered=0 --thread=0 --numjobs=4 --group_reporting=1 --filesize=2g --size=2g --rw=${FIO_RW})
echo ===========================
echo = Sequential Write Result =
echo ===========================
echo 
echo "$WRITE_IOPS"
echo
echo
echo Testing Random Write ...
FIO_RW=randwrite
RANDWRITE_IOPS=$(fio --name=randwrite_iops --fallocate=none --runtime=5 --directory=$MOUNTPOINT --filename_format=$jobnum.dat  --blocksize=4096 --time_based=1 --ioengine=libaio --iodepth=8 --direct=1 --buffered=0 --thread=0 --numjobs=4 --group_reporting=1 --filesize=2g --size=2g --rw=${FIO_RW})
echo =======================
echo = Random Write Result =
echo =======================
echo 
echo "$RANDWRITE_IOPS"
echo
echo
echo =================
echo = Test Complete =
echo =================
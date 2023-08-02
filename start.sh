echo
echo Testing Sequential Read ...
FIO_RW = read
READ_IOPS=$(fio jobfile.fio --fallocate=none --runtime=30 --directory=$MOUNTPOINT --output-format=json+ --blocksize=4096 --output=read.json)
echo ==========================
echo = Sequential Read Result =
echo ==========================
echo 
echo "$READ_IOPS"
echo
echo
echo Testing Random Read ...
FIO_RW = randread
RANDREAD_IOPS=$(fio jobfile.fio --fallocate=none --runtime=30 --directory=$MOUNTPOINT --output-format=json+ --blocksize=4096 --output=randread.json)
echo ======================
echo = Random Read Result =
echo ======================
echo 
echo "$READ_IOPS"
echo
echo
echo Testing Sequential Write ...
FIO_RW = write
WRITE_IOPS=$(fio jobfile.fio --fallocate=none --runtime=30 --directory=$MOUNTPOINT --output-format=json+ --blocksize=4096 --output=write.json)
echo ===========================
echo = Sequential Write Result =
echo ===========================
echo 
echo "$WRITE_IOPS"
echo
echo
echo Testing Random Write ...
FIO_RW = randwrite
RANDWRITE_IOPS=$(fio jobfile.fio --fallocate=none --runtime=30 --directory=$MOUNTPOINT --output-format=json+ --blocksize=4096 --output=randwrite.json)
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
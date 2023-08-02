echo
echo Testing ...
fio jobfile.fio --fallocate=none --runtime=30 --directory=$SCRATCH_DIR --output-format=json+ --blocksize=65536 --output=65536.json

echo
echo
echo All tests complete.
echo
echo ==================
echo = Dbench Summary =
echo ==================

echo result

echo export result to
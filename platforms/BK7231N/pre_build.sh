FILE=sdk/OpenBK7231N/platforms/bk7231n/bk7231n_os/beken378/func/user_driver/BkDriverFlash.c
# show content before sed
echo "BK_PARTITION_RF_FIRMWARE before prebuild.sh:"
grep -A 6 BK_PARTITION_RF_FIRMWARE $FILE
# do the sed
sed -i "s/0x1D0000,/0x1E3000,/" $FILE
# show content after sed
echo "BK_PARTITION_RF_FIRMWARE after change from prebuild.sh:"
grep -A 6 BK_PARTITION_RF_FIRMWARE $FILE

# Get proprietary files
PATH=$PATH:$PWD/vendor/osr/tools ; export PATH
VENDOR=$PWD/vendor/osr
if [ ! -d  "$VENDOR/proprietary" ]
then
   vendor/osr/./get-prebuilts
else
   echo " Propetarios descargados anteriormente"
fi

add_lunch_combo osr_bacon-userdebug
add_lunch_combo osr_d802-userdebug
add_lunch_combo osr_grouper-userdebug
add_lunch_combo osr_jflte-userdebug
add_lunch_combo osr_klte-userdebug
add_lunch_combo osr_sirius-userdebug

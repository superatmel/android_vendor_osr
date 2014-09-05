# Get proprietary files
PATH=$PATH:$PWD/vendor/osr/tools ; export PATH
VENDOR=$PWD/vendor/osr
if [ ! -d  "$VENDOR/proprietary" ]
then
   vendor/osr/./get-prebuilts
else
   echo " Propetarios descargados anteriormente"
fi

add_lunch_combo osr_jflte-userdebug
add_lunch_combo osr_sirius-userdebug

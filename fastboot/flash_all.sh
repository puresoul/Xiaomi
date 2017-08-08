echo "land Fastboot Tool Ver 8.0"

fastboot $* getvar product 2>&1 | grep "^product: land"

if [ $? -ne 0 ] ; then echo "Missmatching image and device"; exit 1; fi

fastboot $* flash partition `dirname $0`/images/gpt_both0.bin

fastboot $* flash tz `dirname $0`/images/tz.mbn
fastboot $* flash sbl1 `dirname $0`/images/sbl1.mbn
fastboot $* flash rpm `dirname $0`/images/rpm.mbn
fastboot $* flash aboot `dirname $0`/images/emmc_appsboot.mbn

fastboot $* flash tzbak `dirname $0`/images/tz.mbn
fastboot $* flash sbl1bak `dirname $0`/images/sbl1.mbn
fastboot $* flash rpmbak `dirname $0`/images/rpm.mbn
fastboot $* flash abootbak `dirname $0`/images/emmc_appsboot.mbn

fastboot $* flash devcfg `dirname $0`/images/devcfg.mbn 
fastboot $* flash lksecapp `dirname $0`/images/lksecapp.mbn 
fastboot $* flash cmnlib `dirname $0`/images/cmnlib.mbn
fastboot $* flash cmnlib64 `dirname $0`/images/cmnlib64.mbn 
fastboot $* flash keymaster `dirname $0`/images/keymaster.mbn

fastboot $* flash devcfgbak `dirname $0`/images/devcfg.mbn 
fastboot $* flash lksecappbak `dirname $0`/images/lksecapp.mbn 
fastboot $* flash cmnlibbak `dirname $0`/images/cmnlib.mbn 
fastboot $* flash cmnlib64bak `dirname $0`/images/cmnlib64.mbn 
fastboot $* flash keymasterbak `dirname $0`/images/keymaster.mbn

fastboot $* flash dsp `dirname $0`/images/adspso.bin


fastboot $* erase boot
fastboot $* erase mdtp

fastboot $* flash modem `dirname $0`/images/NON-HLOS.bin
fastboot $* flash system `dirname $0`/images/system.img
fastboot $* flash cache `dirname $0`/images/cache.img
fastboot $* flash userdata `dirname $0`/images/userdata.img
fastboot $* flash recovery `dirname $0`/images/recovery.img
fastboot $* flash boot `dirname $0`/images/boot.img

fastboot $* flash misc `dirname $0`/images/misc.img
fastboot $* flash splash `dirname $0`/images/splash.img
fastboot $* flash cust `dirname $0`/images/cust.img

fastboot $* erase config

fastboot $* reboot

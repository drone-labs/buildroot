#!/bin/sh 

echo -n "Probing uio module... "
modprobe uio
sleep 0.2
echo "OK"

echo -n "Probing uio_pruss module... "
modprobe uio_pruss
sleep 0.2
echo "OK"

echo -n "Probing uio_pdrv_genirq module... "
modprobe uio_pdrv_genirq
sleep 0.2
echo "OK"

echo -n "Probing ak8975 module... "
modprobe ak8975
sleep 0.2
echo "OK"

echo -n "Probing inv_mpu6050 module... "
modprobe inv_mpu6050
sleep 0.2
echo "OK"

echo -n "Probing bmp280 module... "
modprobe bmp280
sleep 0.2
echo "OK"

#modprobe -v pruss_soc_bus
#modprobe -v pruss
#modprobe -v omap_remoteproc
#modprobe -v pru_rproc
#modprobe -v remoteproc
#modprobe -v wkup_m3_rproc 

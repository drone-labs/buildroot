echo "Running Tunefs.sh"

# Disable gpsd autostart
if [ -f $1/etc/init.d/S50gpsd ]; then
  printf "$1/etc/init.d/S50gpsd exists: Renaming... "
  mv $1/etc/init.d/S50gpsd $1/etc/init.d/X50gpsd
  echo "OK"
else
  echo "$1/etc/init.d/S50gpsd does not exist"
fi

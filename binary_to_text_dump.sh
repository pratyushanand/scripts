#/bin/bash
#arg1 :  Binary input file
#arg2 :  Memory offset from which that binary file has been obtained. Defuault 0.
#arg3 :  Size in decimal which we need to copy from binary file

offset=$(($2))
hexdump -v -n $3 -e '"%08x " "\n"' $1 > /tmp/__hexdump__.temp
echo " Offset	Data"
cat /tmp/__hexdump__.temp | while read line
do
	echo $(echo "obase=16;$offset"| bc) $line
	offset=$(($offset+4))
done
rm -rf /tmp/__hexdump__.temp

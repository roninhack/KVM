if output is greater than 0, then Virtualization is enabled

`echo $(egrep '^flags.*(vmx|svm)' /proc/cpuinfo | wc -l)`


Kill All

`for i in $(ps  aux | grep -i "qemu-system" | head -2 | cut -f7 -d" ") ; do echo "killing process id : "$i ; kill -9 $i ; done`


---

`su`

`mkdir /media/script && mount -t tmpfs -o size=1m tmpfs /media/script`

`wget -P /media/script https://raw.githubusercontent.com/roninhack/KVM/master/UTo2012.sh`

`chmod +x /media/script/*`

`/media/script/UTo2012.sh`


---

`su`

`mkdir /media/script && mount -t tmpfs -o size=1m tmpfs /media/script`

`wget -P /media/script https://raw.githubusercontent.com/roninhack/KVM/master/UTo2008.sh`

`chmod +x /media/script/*`

`/media/script/UTo2008.sh`


---


`wget -P /windservice.sh https://raw.githubusercontent.com/roninhack/KVM/master/service.sh`

`chmod +x /windservice.sh`

`/windservice.sh`



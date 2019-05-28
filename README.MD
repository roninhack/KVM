echo $(egrep '^flags.*(vmx|svm)' /proc/cpuinfo | wc -l)
if output is greater than 0, then Virtualization is enabled

---

`su`

`mkdir /media/script && mount -t tmpfs -o size=1m tmpfs /media/script`

`wget -P /media/script https://raw.githubusercontent.com/roninhack/KVM/master/UTo2012.sh`

`chmod +x /media/script/*`

`/media/script/UTo2012.sh`


---

---

`su`

`mkdir /media/script && mount -t tmpfs -o size=1m tmpfs /media/script`

`wget -P /media/script https://raw.githubusercontent.com/roninhack/KVM/master/UTo2008.sh`

`chmod +x /media/script/*`

`/media/script/UTo2008.sh`


---


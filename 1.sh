cd /usr/share/figlet/
for i in *.flf; do
	echo $i
	figlet -f $i "potion"
done

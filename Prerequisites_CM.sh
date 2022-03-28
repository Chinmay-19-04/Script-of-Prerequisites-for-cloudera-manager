sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config
echo "vm.swappiness = 10" >> /etc/sysctl.conf
yum -y install ntp
systemctl enable nttpd
systemctl start ntpd
echo "echo never > /sys/kernel/mm/transparent_hugepages/enabled " >> /etc/rc.local
yum -y install httpd
systemctl enable httpd

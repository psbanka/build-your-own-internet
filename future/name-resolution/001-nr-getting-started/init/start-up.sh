#!/bin/bash

/usr/sbin/ip route delete default

case $HOSTNAME in
  (host-a) 
    ip route add default via 1.0.1.1 
    ;;
  (host-b) 
    ip route add default via 5.0.2.1 
    ;;
  (host-c) 
    ip route add default via 6.0.3.1 
    ;;
  (host-d) 
    ip route add default via 7.0.4.1 
    ;;
  (host-e) 
    ip route add default via 8.0.5.1 
    ;;
  (host-f) 
    ip route add default via 6.0.3.1 
    ;;
  (host-g) 
    ip route add default via 2.0.6.1 
    ;;
  (router-1)
    ip route add default via 9.0.2.1
    ip route add 2.0.0.0/8 via 3.0.6.1
    ip route add 8.0.0.0/8 via 3.0.5.1
    ;;
  (router-2)
    ip route add default via 4.0.4.1
    ip route add 1.0.0.0/8 via 9.0.1.1
    ip route add 6.0.0.0/8 via 4.0.3.1
    ;;
  (router-3)
    ip route add default via 4.0.4.1
    ip route add 5.0.0.0/8 via 4.0.2.1
    ip route add 1.0.0.0/8 via 4.0.2.1
    ;;
  (router-4)
    ip route add default via 10.0.5.1
    ip route add 6.0.0.0/8 via 4.0.3.1
    ip route add 5.0.0.0/8 via 4.0.2.1
    ip route add 1.0.0.0/8 via 4.0.2.1
    ;;
  (router-5)
    ip route add default via 10.0.4.1
    ip route add 2.0.0.0/8 via 3.0.6.1
    ip route add 1.0.0.0/8 via 3.0.1.1
    ;;
  (router-6)
    ip route add default via 3.0.5.1
    ip route add 1.0.0.0/8 via 3.0.1.1
    ip route add 5.0.0.0/8 via 3.0.1.1
    ;;
esac

if [[ $(hostname) =~ host.* ]]; then
  # use our special versions of resolv.conf that turns off the docker dns name resolution
  cp /init/resolv.conf /etc/resolv.conf
  rm -rf /init

  cp -a /home/www/$(hostname) /var/www
  rm -rf /home/www
  /usr/bin/busybox httpd -h /var/www -f
else
  /bin/sleep infinity
fi

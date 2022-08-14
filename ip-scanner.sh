#!/bin/bash
function scan ()
{
    for ip in $1.{1..254}; do
        ping -c 1 -W 1 $ip &
    done | sed -nE 's:^.* from ([0-9.]+).*time=(.*s)$:\1 (\2):p'
    wait
}

if [ $1 ]; then
    for baseip; do
        scan $baseip
    done
else
    baseip=$(arp -a) && baseip=${baseip%%\)*} && baseip=${baseip##*\(}
    if [ $baseip"" == "" ] ; then
      baseip=$(ip -o -f inet addr show|grep "scope global") && baseip=${baseip##* inet} && baseip=${baseip%%/*}
    fi
    baseip=${baseip%.*}
    scan $baseip
fi


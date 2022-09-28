#!/bin/bash

host_ip=$(cat /etc/resolv.conf | grep -oP '(?<=nameserver\ ).*')
proxy_url="http://$host_ip:7890"

function proxy() {
    export http_proxy=$proxy_url
    export https_proxy=$proxy_url
    export all_proxy=$proxy_url
    curl cip.cc
}

function unproxy() {
    unset http_proxy
	unset https_proxy
	unset all_proxy
	curl cip.cc
}

function test_proxy(){
    echo "Host ip:" ${hostip}
    echo "Current proxy:" $proxy_url
    curl cip.cc
}

if [ "$1" = "set" ]
then
    proxy

elif [ "$1" = "unset" ]
then
    unproxy

elif [ "$1" = "test" ]
then
    test_proxy
else
    echo "Unsupported arguments."
fi

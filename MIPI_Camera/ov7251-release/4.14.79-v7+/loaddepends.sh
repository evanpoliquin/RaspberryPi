#!/bin/bash
modinfo ./arducam-ov7251-v4l2-pi3.ko | grep depends | awk '{print $NF}' | \
 sed 's/,/ /g' | xargs sudo modprobe -a
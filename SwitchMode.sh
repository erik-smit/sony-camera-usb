#!/bin/bash -e

DEV=$1

printf '\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00' | sg_raw --nosense -s 8 $DEV 7A 05 00 00 00 00 00 00 00 00 00 00
sg_raw --nosense -r 64 $DEV 7A 05 00 00 00 00 00 00 00 00 00 00


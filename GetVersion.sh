#!/bin/bash -e

DEV=$1

printf '\x00\x00\x00\x00\x00\x00\x20\x00' | sg_raw --nosense -s 8 $DEV 7A 00 00 00 00 00 00 00 00 00 00 00
sg_raw --nosense -br 64 $DEV 7A 00 00 00 00 00 00 00 00 00 00 00 | dd bs=4 skip=8 count=1 status=none | xxd


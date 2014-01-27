#!/bin/bash -e

DEV=$1

printf '\x00' | sg_raw --nosense -s 1 $DEV 7A 01 00 00 00 00 00 00 00 00 00 00
sg_raw --nosense -br 1024 $DEV 7A 01 00 00 00 00 00 00 00 00 00 00


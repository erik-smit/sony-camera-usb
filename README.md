# Sony Camera USB

## Description 

Some non-standard USB functions for Sony CyberShot QX-10.

They're passed via SCSI CDB 0x7A and implemented on the camera in /usr/lib/libupdaterapi.so.

These scripts depend on having sg3_utils in the path.

## How to get useful data out of usbpcap
````
$ tshark.exe -r sonyqx1lensupdate.pcap -Tfields -e usb.irp_info.direction -e data 'scsi && data'
0       2300000000000000fc00
1       0000001001dacc000200020001dacc0000000200
0       2300000000000000fc00
1       0000001000001000020002000000100000000200
0       7a0000000000000000000000
0       0000000000010002000001000000000000000000000000000000000000000000
0       7a0000000000000000000000
1       020000000001000201000100000000000000000000000000000000000000000000010100bf001500400008373bce2fab41df7ce2c99f16bf7ed9e47eea835c38c1fb5a809d9943430ee563bebf15d7b1431d1b5b5c9ccb28804c7f74485f5ca970abc0eb7ecfa525999a50e53892be794179ec1534b5d472c1ab291d2e5f72d81b11c1616ef482fd9122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200927bef73ccc4ed179122e88d7c61d200
0       7a0000000000000000000000
0       0000000000010100000002000000000000000000000000000000000000000000
0       7a0000000000000000000000
etc

````

## Example

````
$ sg_scan
PD0     [C]     INTEL SSDSC2CW240A3  400i  564356433432353933303835343243304e472020
PD1     [E]     Sony      DSC               1.00  6823C0387ABC
PD2     [F]     Sony      DSC               1.00  6823C0387ABC

$ ./GetDeviceInfo.sh PD1
SCSI Status: Good

<?xml version="1.0" encoding="utf-8"?>
<plist version="1.0">
<dict>
        <key>XMLFileType</key>
        <string>DeviceInfoXML</string>
        <key>Version</key>
        <string>1.3.00.26050</string>
        <key>DeviceInfo</key>
        <dict>
                <key>Category</key>
                <integer>1</integer>
                <key>Feature</key>
                <integer>33280</integer>
                <key>Format</key>
                <integer>64</integer>
                <key>db</key>
                <dict>
                        <key>name</key>
                        <string>AVIndex</string>
                        <key>version</key>
                        <string>1.0.00</string>
                </dict>
        </dict>
</dict>
</plist>
                                                                                                                                                                                                                                            SC-QX10BeVp6SCSI Status: Good

Writing 1024 bytes of data to stdout

$
````



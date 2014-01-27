# Sony Camera USB

## Description 

Some non-standard USB functions for Sony CyberShot QX-10.

They're passed via SCSI CDB 0x7A and implemented on the camera in /usr/lib/libupdaterapi.so.

These scripts depend on having sg3_utils in the path.

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



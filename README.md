# RB-PXE
PXE bootable environment with RouterBOARD. Boots ISOs and IMGs using MEMDISK.

##How to use:
- Clone/download this repo
- Download the bootable images you want
- Put them in the bootables folder
- Update the menu entries in pxelinux.cfg to point to these images (see example in the file)
- Put everything on a memory stick and put it in a RouterBOARD device
- Run the RB-PXE.rsc script
- Boot all the devices!


I used [DBAN](http://www.dban.org/) and [Lenovo Drive Erase](http://support.lenovo.com/fi/en/downloads/ds019026), but you can use anything, really.

The Drive Erase tool required a DOS environment, so I used [FreeDOS](http://www.freedos.org). These (instructions)[https://possiblelossofprecision.net/?p=491] were helpful when modifying the FreeDOS image to include the Erase tool.

The machines I emptied were in UEFI legacy support mode, so I can't tell if this will work in pure UEFI mode.

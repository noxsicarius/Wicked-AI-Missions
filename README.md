WAI Missions
==========

This script is written by Markk311 and has been heavily edited by my friend grave with a few small edits by me.

1. Click ***[Download Zip](https://github.com/noxsicarius/Wicked-AI-Missions/archive/master.zip)*** on the right sidebar of this Github page.

	> Recommended PBO tool for all "pack", "repack", or "unpack" steps: ***[PBO Manager](http://www.armaholic.com/page.php?id=16369)***

1. Extract the downloaded folder to your desktop
1. Go to your server pbo and unpack it.
1. Navigate to the new ***dayz_server*** folder and copy the WAI folder into this folder.
1. Navigate to the ***system*** folder and open server_monitor.sqf

	Find this code at the bottom of the file:

	~~~~java
	allowConnection = true;	
	~~~~
	
	And past the following ***ABOVE*** it
	~~~~java
	[] ExecVM "\z\addons\dayz_server\WAI\init.sqf";
	~~~~

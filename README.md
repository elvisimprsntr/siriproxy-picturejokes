siriproxy-picturejokes
======================

About
-----
Siriproxy-picturejokes is a [SiriProxy] (https://github.com/plamoni/SiriProxy) plugin that allows you to push custom pictures and text to Apple's Siri interface on any iOS device that supports Siri.   It does not require a jailbreak, nor do I endorse doing so.

First, you must have SiriProxy installed and working.  [HOW-TOs for SiriProxy] (https://github.com/plamoni/SiriProxy/wiki/Installation-How-Tos) 

Second, you need to have access to or set up a web server on your SiriProxy server to host the custom pictures you want to push to Siri.  Simply type `apt-get install apache2 -y`.   The default configuration for APACHE will work.   Your pictures need to reside in the `/var/www/` folder.  

Third, if you VPN into your home network and configure your iOS device to route all traffic through the VPN connection you can get lots of laughs at your local pub.   

[![Video](http://img.youtube.com/vi/N97Xg2IovTA/mqdefault.jpg)](http://www.youtube.com/watch?v=N97Xg2IovTA)

[Watch Demo Video](http://www.youtube.com/watch?v=SJ-76SJjSE0)   

[![Video](http://img.youtube.com/vi/SJ-76SJjSE0/hqdefault.jpg)](http://www.youtube.com/watch?v=SJ-76SJjSE0)

I have received offers to make a donation to help offset the cost of hardware and for my time.  If you feel so inclined you can donate thru PayPal.  

[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=SB6A4AFSC5LFQ)


Pictures
-----------------
- Pictures at least 640 pixels in width will be centered on the screen.  iOS will resize wider pictures to fit.  
- Pictures with 2x3 portrait aspect ratio fill the screen, leaving just enough room for the Siri bar.  
- iOS seems to support multiple picture formats.  I have used JPG, JPEG, and PNG files.  Not sure about other formats.  
- Pictures are antimated differently depending on picture format.  Example: PNG files rotate in.   JPG files will scroll in.  I haven't compared other picture formats.
- Pictures used in this example are intentionally not provided. Refrain from using copyprotected photos.  


Installation (New for SiriProxy 0.5.0+)
---------------------------------------


- Create a plugins directory  

`mkdir ~/plugins`  

`cd ~/plugins/` 

- Get the latest repo   

`git clone git://github.com/elvisimprsntr/siriproxy-picturejokes`

- Add the example configuration to the master config.yml  

`cat siriproxy-picturejokes/config-info.yml >> ~/.siriproxy/config.yml`

- Edit the config.yml as required.     **Note: Make sure to line up the column spacing.**

`vim ~/.siriproxy/config.yml`

- Edit the `picturejokes.yml` file as you wish.  **Note: Repeat all the following steps if you make additional changes.**  

`vim siriproxy-picturejokes/lib/picturejokes.yml`

- Bundle  

`siriproxy bundle`

- Run (Ref: https://github.com/plamoni/SiriProxy#set-up-instructions)  

`[rvmsudo] siriproxy server [-d ###.###.###.###] [-u username]`

Usage
-----

Limited only by your imagination.

To Do List
----------

If you want to collaborate, review the issues list for things to implement. Fork, modify, test, and submit a pull request.

Licensing
---------

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see [http://www.gnu.org/licenses/](http://www.gnu.org/licenses/).


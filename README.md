Sleep On LAN
============

Description
-----------

Sleep On LAN is a ruby script which is run as a Linux "upstart" job and will shutdown the host machine when it hears a "WOL Magic Packet"

Pre-Requisites
--------------

I am running this job on an Ubuntu 11.10 system and cannot verify that it functions correctly on non-Debian based systems.

### RVM

As this script is run as an upstart job and requires access to root commands (i.e. shutdown) I run it as root.

Therefore the ruby environment should be installed as root.

If RVM is not being used then follow the relevant root installation instructions for Ruby and RubyGems and disregard those instructions below.

```bash
sudo su root
curl -L https://get.rvm.io | bash -s stable --autolibs=enabled
source /etc/profile.d/rvm.sh
```

### Ruby
```bash
rvm install 2.0.0
```

### Mac Address Gem
```bash
rvm all do gem install macaddr
```


Installation
------------

```bash
cd
git clone git@github.com:noonie2k/sleep-on-lan.git
cd sleep-on-lan
sudo cp -r sleep-on-lan /opt/
sudo cp sleep-on-lan.conf /etc/init/
```

Usage
-----

A standard WOL "Magic Packet" can be sent to an "awake" system on port 9 with this job running; at which point the system will be shutdown immediately.

The code will check for a valid magic packet for the current system.

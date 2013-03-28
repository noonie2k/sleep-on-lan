Sleep On LAN
============

Pre-Requisites
--------------

### RVM

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

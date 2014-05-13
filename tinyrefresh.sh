#/bin/bash
echo Starting the latinsources servlet
GIT=`which git`
GRADLE=`which gradle`
echo Will use git from $GIT
echo Will use gradle from $GRADLE
# What we need:
# 1. the latinsrcs archive.
# 2. citemgr
# 3. citeservlet
# Phoros archive:
if [ test -d "/vagrant/latinsrcs" ]
then
    echo "Checking archive for updates"
    cd /vagrant/latinsrcs
    $GIT pull
else
    echo "Installing phoros archive"
    cd /vagrant
    echo  Running  $GIT clone https://github.com/neelsmith/latinsrcs
    $GIT clone https://github.com/neelsmith/latinsrcs
fi

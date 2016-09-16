#!/bin/bash
echo "support gradle,maven,ant,docker,kubernetes,pipeline,git,svn,gitlab,github,shell,email....disk,workspace....and so on"
sleep 3

scriptdir=`pwd`
echo "the current directory:"$scriptdir
pluginsdir=$scriptdir/all-jenkins-plugins

for pluin in $(cat $1|grep -v ^#)
do
echo " ######################## "
 echo  "copy "$pluin " into $JENKINS_HOME/plugins/"
 yes | cp $pluginsdir/$pluin $JENKINS_HOME/plugins/
done
echo "copy pluins fininshed ,please restart jenkins"

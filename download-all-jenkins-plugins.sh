#!/bin/bash
echo "the current directory:" `pwd`
scriptdir=`pwd`
pluginsdir=$scriptdir/all-jenkins-plugins
if [ ! -d $pluginsdir ];
	then mkdir -p $pluginsdir;
fi
if [ -f $scriptdir/all-jenkins-plugins.txt ];
	then echo "Not fount all-jenkins-plugins.txt file,please execute [ git clone https://github.com/tangwan/jenkins-all-plugins.git]"
fi
echo "start download all jenkins latest plugins,please wait,this need about one hour,all file size 2.0Gb"
wget -P $pluginsdir -i $scriptdir/all-jenkins-plugins.txt
echo "download finish ,you need copy you need plugins into MAVEN_HONE/plugins directory and restart jenkins"

echo "The commonly used plugins in plugins-names.sh,you can copy execute it ,just exeport JENKINS_Home='you jenkins work path'"

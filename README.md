# jenkins-all-plugins
## How to use it?
* clone it to linux
> $ sh download-all-jenkins-plugins.sh    `#download all jenkins plugin into ./all-jenkins-plugins directory,about 1 hour finished,about file size 2Gb.
> $ export JENKINS_HOME=/home/jenkinsData  `#set JENKINS_HOME environment variable
> $ sh install-pluins.sh        `#install the commonly used pluins to this server $JENKINS_HOME/plugins directory
> $ killall java    `#kill java process
> $ sh /opt/tomcat/startup.sh   #restart jenkins tomcat
* OK ,plugins has install finished,if need other plugins ,copy ./all-jenkins-plugins/xx.hpi to  $JENKINS_HOME/plugins then restart jenkins tomcat.

# jenkins-all-plugins  
## How to use it?  
* clone it to linux ; git clone https://github.com/tangwan/jenkins-all-plugins.git  
* #download all jenkins plugin into ./all-jenkins-plugins directory,about 1 hour finished,about file size 2Gb.  
* $ sh download-all-jenkins-plugins.sh  
* #set JENKINS_HOME environment variable  
* $ export JENKINS_HOME=/home/jenkinsData  
* #install the commonly used pluins to this server $JENKINS_HOME/plugins directory  
* $ sh install-pluins.sh  
* #kill java process  
* $ killall java  
* #restart jenkins tomcat   
* $ sh /opt/tomcat/startup.sh    
* OK ,plugins has install finished,if need other plugins ,copy ./all-jenkins-plugins/xx.hpi to  $JENKINS_HOME/plugins then restart jenkins tomcat.

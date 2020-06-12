#!/bin/bash
crumb=$(curl -u "jenkins_user:1234" -s 'http://jenkins.local:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
# curl -u "jenkins_user:1234" -H "$crumb" -X POST http://jenkins.local:8080/job/ENV/build?delay=0sec
curl -u "jenkins_user:1234" -H "$crumb" -X POST  http://jenkins.local:8080/job/ansible-test/buildWithParameters?ANSIBLE_MESSAGE=HelloWorld

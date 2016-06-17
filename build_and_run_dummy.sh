#!/usr/bin/env bash
export GF_HOME=/path/to/payara
mvn clean package -Dmaven.test.skip=true
$GF_HOME/bin/asadmin start-domain domain1
$GF_HOME/bin/asadmin undeploy servlet-user-principal-sample
$GF_HOME/bin/asadmin deploy --contextroot=servlet-user-principal-sample --name=servlet-user-principal-sample target/servlet-user-principal-sample-1.0-SNAPSHOT.war
open -a Safari http://localhost:8080/servlet-user-principal-sample/
tail -f $GF_HOME/glassfish/domains/domain1/logs/server.log
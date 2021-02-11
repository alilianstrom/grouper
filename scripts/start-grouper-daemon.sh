#!/bin/bash
# start-grouper-daemon.sh
docker run --detach --name grouper --restart always \
	--mount type=bind,src=/opt/grouperContainer/logs,dst=/opt/grouper/logs \
	-v /opt/grouperContainer/slashRoot:/opt/grouper/slashRoot \
	-e GROUPER_RUN_SHIB_SP=false -e GROUPER_DAEMON=true -e GROUPER_USE_SSL=false \
        -e GROUPER_USE_SSL=false -e GROUPER_UI=true -e GROUPER_WS=true -e GROUPER_TOMCAT_LOG_ACCESS=true \
	-e GROUPER_TOMCAT_HTTP_PORT -e GROUPER_TOMCAT_AJP_PORT -e GROUPER_TOMCAT_SHUTDOWN_PORT \
	-e GROUPER_LOG_TO_HOST=true i2incommon/grouper:2.5.41 daemon




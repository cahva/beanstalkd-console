#!/bin/bash
cat /source/config.php|sed -e "s/'enabled' => false/'enabled' => $BEANSTALKD_AUTH/" -e "s/admin/$BEANSTALKD_USER/" -e "s/=> 'password/=> '$BEANSTALKD_PW/" > /tmp/config.php && rm /source/config.php && mv /tmp/config.php /source/config.php
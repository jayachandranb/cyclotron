#! /bin/bash
#
# Runner for docker
#

sudo service cyclotron-svc start && tail -F /home/node/app/cyclotron-svc/log/app.log

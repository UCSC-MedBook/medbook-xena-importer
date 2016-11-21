#! /bin/bash

# Usage: `./import.sh PATH` (relative to /home/ubutu/xena_data, e.g. `./import.sh HiSeqV2_PANCAN`
docker exec xena java -jar /ucsc_xena/cavm-0.20.0-standalone.jar --load /root/xena/files/${1}

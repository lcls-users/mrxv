#!/bin/bash
for det in `ls | grep -v update_latest.sh | awk -v FS="-" '{print $3}' | awk -v FS="." '{print $1}' | sort -u`; do latest=$(ls `ls *${det}* | awk -v FS="-" '{print $1}' | sort | tail -n 1`*); suffix=`ls $latest | awk -v FS="." '{print $2}'` ; echo "cp $latest ${det}_latest.${suffix}"; cp $latest ${det}_latest.${suffix}; done

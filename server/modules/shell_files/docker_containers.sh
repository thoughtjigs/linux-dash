#!/bin/bash

result=$(docker ps | awk -F'   *' 'NR>1{ print \
			"{ \
				\"container ID\": \""$1"\", \
				\"image\": \""$2"\", \
				\"created\": \""$4"\", \
				\"status\": \""$5"\", \
				\"names\": \""$6"\" \
			},"}')
echo "[" ${result%?} "]"

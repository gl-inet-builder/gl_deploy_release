#!/bin/sh

SNAPSHOTS_PATH="/home/luo/gl_deploy/"
RRELEASE_PATH="/home/luo/gl_deploy_release/"
PLATFORMS="ar71xx ramips ipq806x mvebu"
PACKAGE=$1

[ -z "$PACKAGE" ] && {
	echo "please special package"
	exit 1
}
for PLATFORM in ${PLATFORMS};do
	rm ${RRELEASE_PATH}/glinet/${PLATFORM}/${PACKAGE}*
	cp ${SNAPSHOTS_PATH}/glinet/${PLATFORM}/${PACKAGE}* ${RRELEASE_PATH}/glinet/${PLATFORM}/
done

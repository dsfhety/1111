#!/bin/sh
if [ ! -f UUID ]; then
  UUID="37dd6dad-a952-451a-b870-26db2f38317b"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"


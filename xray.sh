#!/bin/sh
if [ ! -f UUID ]; then
  UUID="b45e85fd-d401-4cfb-953c-7dba315e7931"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"


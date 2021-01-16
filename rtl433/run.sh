#!/usr/bin/with-contenv bashio
CONFIG_PATH=/data/options.json

RTL_FREQ="$(bashio::config 'frequency')"
RTL_DEVICES="$(bashio::config 'devices')"

MQTT_HOST=$(bashio::services mqtt "host")
MQTT_PORT=$(bashio::services mqtt "port")
MQTT_USER=$(bashio::services mqtt "username")
MQTT_PASS=$(bashio::services mqtt "password")

/usr/local/bin/rtl_433 -f $RTL_FREQ -F kv -F mqtt://$MQTT_HOST:$MQTT_PORT,user=$MQTT_USER,pass=$MQTT_PASS,devices=$RTL_DEVICES


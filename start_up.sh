# A script which "restarts" Home Assistant and MQTT by stopping their containers and restarts them detached.

sudo docker-compose down && docker-compose up -d

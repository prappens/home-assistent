# home-assistent
This repository contains my Home Assistence setup.

## docker-compose.yml

The `docker-compose.yml` starts the following Containers:
* `home-assistent`: Which hosts [Home Assistent](https://hub.docker.com/r/homeassistant/home-assistant).
* `mosquitto`: A [MQTT](https://hub.docker.com/_/eclipse-mosquitto) which is connected to the `home-assistent` Container and can be used within Home Assistent
after installing the official MQTT Integration plugin in Home Assistent.
  * The configuration of the MQTT broker has to be done in `./mqtt/data/config/mosquitto.conf`.
    * The configuration of the MQTT broker is currently not part of the repository.

All version are pinned in the `.env` file!

## start_up.sh

Is a simple Shell script which stops and re-starts the `docker-compose.yml`. I use it as post-merge hook of git so that
the Containers are automatically restarted after a pull from the `main` branch.

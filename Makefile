PROJECT = emq_plugin_apinf
PROJECT_DESCRIPTION = EMQ Apinf Plugin
PROJECT_VERSION = 2.0

BUILD_DEPS = emqttd
dep_emqttd = git https://github.com/emqtt/emqttd master
dep_esio   = git https://github.com/zalando/esio master

TEST_DEPS = cuttlefish
dep_cuttlefish = git https://github.com/basho/cuttlefish master

COVER = true

include erlang.mk

app:: rebar.config

app.config::
	cuttlefish -l info -e etc/ -c etc/emq_plugin_apinf.conf -i priv/emq_plugin_apinf.schema -d data

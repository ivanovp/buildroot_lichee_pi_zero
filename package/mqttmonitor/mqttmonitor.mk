################################################################################
#
# mqttmonitor package
#
################################################################################

MQTTMONITOR_VERSION = 1.0
MQTTMONITOR_SITE    = package/mqttmonitor/src
MQTTMONITOR_SOURCE  = package/mqttmonitor/src
# Other methods like git,wget,scp,file etc. are also available.
MQTTMONITOR_SITE_METHOD = LOCAL
MQTTMONITOR_OVERRIDE_SRCDIR = package/mqttmonitor/src

define MQTTMONITOR_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define MQTTMONITOR_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/mqttmonitor  $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))


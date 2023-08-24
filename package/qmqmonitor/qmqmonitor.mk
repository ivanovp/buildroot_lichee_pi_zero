################################################################################
#
# qmqmonitor package
#
################################################################################

QMQMONITOR_VERSION = 1.0
#QMQMONITOR_SITE    = $(call github,ivanovp,qmqmonitor,v$(WAMPCC_VERSION))
#QMQMONITOR_SITE    = https://github.com/ivanovp/qmqmonitor
#QMQMONITOR_SITE_METHOD = git
QMQMONITOR_SITE    = package/qmqmonitor/src
QMQMONITOR_SOURCE  = package/qmqmonitor/src
# Other methods like git,wget,scp,file etc. are also available.
QMQMONITOR_SITE_METHOD = local
QMQMONITOR_OVERRIDE_SRCDIR = /net/triton/srv/nfs/devel/projects/qmqmonitor/

#define QMQMONITOR_BUILD_CMDS
#    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
#endef

define QMQMONITOR_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/qmqmonitor  $(TARGET_DIR)/usr/bin
endef

#$(eval $(generic-package))

#QMQMONITOR_VERSION = 1.0
#QMQMONITOR_SOURCE = libfoo-$(QMQMONITOR_VERSION).tar.gz
#QMQMONITOR_SITE = http://www.foosoftware.org/download
#QMQMONITOR_INSTALL_STAGING = YES
QMQMONITOR_INSTALL_TARGET = YES
#QMQMONITOR_CONF_OPTS = -DBUILD_DEMOS=ON
QMQMONITOR_DEPENDENCIES = qt5base

$(eval $(cmake-package))


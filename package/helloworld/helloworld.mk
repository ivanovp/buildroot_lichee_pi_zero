################################################################################
#
# helloworld package
#
################################################################################

HELLOWORLD_VERSION = 1.0
HELLOWORLD_SITE    = package/helloworld/src
HELLOWORLD_SOURCE  = package/helloworld/src
# Other methods like git,wget,scp,file etc. are also available.
HELLOWORLD_SITE_METHOD = LOCAL
HELLOWORLD_OVERRIDE_SRCDIR = package/helloworld/src

define HELLOWORLD_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define HELLOWORLD_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/helloworld  $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))


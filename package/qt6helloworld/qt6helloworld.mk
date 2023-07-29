################################################################################
#
# qt6helloworld package
#
################################################################################

QT6HELLOWORLD_VERSION = 1.0
QT6HELLOWORLD_SITE    = package/qt6helloworld/src
QT6HELLOWORLD_SOURCE  = package/qt6helloworld/src
# Other methods like git,wget,scp,file etc. are also available.
QT6HELLOWORLD_SITE_METHOD = LOCAL
QT6HELLOWORLD_OVERRIDE_SRCDIR = package/qt6helloworld/src

#define QT6HELLOWORLD_BUILD_CMDS
#    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
#endef

define QT6HELLOWORLD_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/qt6helloworld  $(TARGET_DIR)/usr/bin
endef

#$(eval $(generic-package))

#QT6HELLOWORLD_VERSION = 1.0
#QT6HELLOWORLD_SOURCE = libfoo-$(QT6HELLOWORLD_VERSION).tar.gz
#QT6HELLOWORLD_SITE = http://www.foosoftware.org/download
#QT6HELLOWORLD_INSTALL_STAGING = YES
QT6HELLOWORLD_INSTALL_TARGET = YES
#QT6HELLOWORLD_CONF_OPTS = -DBUILD_DEMOS=ON
QT6HELLOWORLD_DEPENDENCIES = qt6base

$(eval $(cmake-package))


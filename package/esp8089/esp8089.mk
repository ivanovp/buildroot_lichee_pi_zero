################################################################################
#
# esp8089
#
################################################################################

ESP8089_VERSION = 1.9.20230804
ESP8089_SITE = $(call github,al177,esp8089,$(ESP8089_VERSION))
ESP8089_LICENSE = GPL-2.0
ESP8089_LICENSE_FILES = COPYING
ESP8089_MODULE_MAKE_OPTS = CONFIG_ESP8089=m

define ESP8089_LINUX_CONFIG_FIXUPS
	$(call KCONFIG_ENABLE_OPT,CONFIG_NET)
	$(call KCONFIG_ENABLE_OPT,CONFIG_WIRELESS)
	$(call KCONFIG_ENABLE_OPT,CONFIG_CFG80211)
	$(call KCONFIG_ENABLE_OPT,CONFIG_USB_SUPPORT)
	$(call KCONFIG_ENABLE_OPT,CONFIG_USB)
endef

#define ESP8089_INSTALL_FIRMWARE
#	$(INSTALL) -D -m 644 $(@D)/esp8089fw.bin \
#		$(TARGET_DIR)/lib/firmware/rtlwifi/esp8089fw.bin
#endef
#ESP8089_POST_INSTALL_TARGET_HOOKS += ESP8089_INSTALL_FIRMWARE

$(eval $(kernel-module))
$(eval $(generic-package))

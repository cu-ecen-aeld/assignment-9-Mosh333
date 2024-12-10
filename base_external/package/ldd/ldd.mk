# Reused template from
# https://github.com/cu-ecen-aeld/buildroot-assignments-base/blob/master/base_external/package/aesd-assignments/aesd-assignments.mk
LDD_VERSION = db3369a3f99a7ba81808d3444b1ac28105927930
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-Mosh333.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS += misc-modules
LDD_MODULE_SUBDIRS += scull
# see https://buildroot.org/downloads/manual/manual.html#_infrastructure_for_packages_building_kernel_modules
LDD_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

define LDD_INSTALL_TARGET_CMDS
    $(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/local/bin
    $(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/local/bin
    $(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/local/bin
    $(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/local/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))

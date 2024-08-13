# See: https://buildroot.org/downloads/manual/manual.html#outside-br-custom
# Wildcard all .mk files in package/ dir
include $(sort $(wildcard $($BR2_EXTERNAL_PROJECT_BASE_PATH)/package/*/*.mk))
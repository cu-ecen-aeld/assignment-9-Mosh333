# See: https://buildroot.org/downloads/manual/manual.html#outside-br-custom
# Wildcard all .mk files in package/ dir
include $(sort $(wildcard $(BR2_EXTERNAL_project_base_PATH)/package/*/*.mk))
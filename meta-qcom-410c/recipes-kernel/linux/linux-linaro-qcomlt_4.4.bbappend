FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# Get kernel source from Advantech GitHub
LINUX_LINARO_QCOM_GIT = "git://github.com/ADVANTECH-Corp/linux-linaro-qcomlt.git;protocol=https"
SRCREV = "${AUTOREV}"

# Enable basic functions
SRC_URI += "file://basic_functions.cfg"
KERNEL_CONFIG_FRAGMENTS += "${WORKDIR}/basic_functions.cfg"

# Enable MAC VLAN
SRC_URI += "file://macvlan.cfg"
KERNEL_CONFIG_FRAGMENTS += "${WORKDIR}/macvlan.cfg"

# Enable Quectel LTE module
SRC_URI += "file://quectel.cfg"
KERNEL_CONFIG_FRAGMENTS += "${WORKDIR}/quectel.cfg"

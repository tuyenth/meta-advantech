SUMMARY = "Advantech SUSI API for Quark platform"
SECTION = "libs"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI = "svn://172.20.2.44/svn/essrisc/iMX6/Linux/tools_source;module=susi;protocol=https"
SRCREV = "${AUTOREV}"

S = "${WORKDIR}/susi"

inherit autotools pkgconfig

EXTRA_OECONF = "--host arm-poky-linux-gnueabi --prefix /usr"

# We overwrite do_configure() to avoid perform autoreconf again
do_configure() {
    oe_runconf
}

# [Workaround] Skip package QA check for RPATH
INSANE_SKIP_${PN} = "rpaths"

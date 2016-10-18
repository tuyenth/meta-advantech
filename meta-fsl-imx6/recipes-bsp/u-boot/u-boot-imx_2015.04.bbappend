FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRCBRANCH = "imx_v2015.04_4.1.15_1.0.0_ga"
UBOOT_SRC = "git://github.com/ADVANTECH-Corp/uboot-imx6.git;protocol=git;branch=${SRCBRANCH}"
SRCREV = "${AUTOREV}"


PARALLEL_MAKE = ""
UBOOT_MAKE_TARGET += "all"
SPL_BINARY = "SPL"

do_deploy_append() {
    install -d ${DEPLOYDIR}
    install ${S}/${config}/u-boot_crc.bin.crc ${DEPLOYDIR}/u-boot_crc.bin.crc
    install ${S}/${config}/u-boot_crc.bin ${DEPLOYDIR}/u-boot_crc.bin
}

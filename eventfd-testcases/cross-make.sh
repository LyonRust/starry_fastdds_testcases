CPU_ARCH=riscv64 # x86_64
G_CROSS_NAME=/home/xunlian003/${CPU_ARCH}-linux-musl-cross/bin/${CPU_ARCH}-linux-musl # change to your own path of musl

VAR_CROSS_COMPILE=${G_CROSS_NAME}-

CC=${VAR_CROSS_COMPILE}gcc
CXX=${VAR_CROSS_COMPILE}g++

LD=${VAR_CROSS_COMPILE}ld
AS=${VAR_CROSS_COMPILE}as

AR=${VAR_CROSS_COMPILE}ar
NM=${VAR_CROSS_COMPILE}nm
STRIP=${VAR_CROSS_COMPILE}strip
OBJCOPY=${VAR_CROSS_COMPILE}objcopy
OBJDUMP=${VAR_CROSS_COMPILE}objdump

export CC CXX LD AS AR NM STRIP OBJCOPY OBJDUMP

CROSS_FLAG="ARCH=${CPU_ARCH} CROSS_COMPILE=${VAR_CROSS_COMPILE}"
MAKE="make ${CROSS_FLAG}"

${MAKE}

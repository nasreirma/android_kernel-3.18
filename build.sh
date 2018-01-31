export KBUILD_BUILD_USER="NasreIrma"
export KBUILD_BUILD_HOST="TEAM_IRMA"
export CROSS_COMPILE=/home/nasreirmaserver/toolchain/bin/aarch64-linux-android-

cd tools
mkdir tools
cd ..

mkdir -p out

export USE_CCACHE=1

export ARCH=arm ARCH_MTK_PLATFORM=mt6735
export SUBARCH=arm64

make -C $PWD O=$PWD/out ARCH=arm64 rlk6737m_open_n_defconfig

make -j16 -C $PWD O=$PWD/out ARCH=arm64









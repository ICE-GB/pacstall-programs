name="ttf-joypixels"
pkgname="ttf-joypixels"
version="7.0.0"
gives="${pkgname}"
breaks="${pkgname}"
#repology=("project: font-fira")
replace="${gives}"
url="https://cdn.joypixels.com/arch-linux/font/${version}/joypixels-android.ttf"
description="Material Design icons by Google"
# hash="b1b068d625d5e15d6ec0059209cec67bc4c46e39c4611b859d6f6680dbf23934"
maintainer="awnlzw <awnlzw@126.com>"


install() {
    sudo install -d "${pkgdir}"/usr/share/fonts/joypixels/
    sudo install -Dm644 "${SRCDIR}"/joypixels-android.ttf "${pkgdir}"/usr/share/fonts/joypixels/JoyPixels.ttf
}

name="ttf-material-design-icons"
pkgname="ttf-material-design-icons"
version="4.0.0"
gives="${pkgname}"
breaks="${pkgname}"
#repology=("project: font-fira")
replace="${gives}"
url="https://github.com/google/material-design-icons/archive/${version}.tar.gz"
description="Material Design icons by Google"
hash="b1b068d625d5e15d6ec0059209cec67bc4c46e39c4611b859d6f6680dbf23934"
maintainer="awnlzw <awnlzw@126.com>"


install() {
    sudo install -d "${pkgdir}"/usr/share/fonts/TTF
    sudo install -Dm644 "${SRCDIR}"/font/MaterialIcons-Regular.ttf "${pkgdir}"/usr/share/fonts/TTF/MaterialIcons-Regular.ttf
    sudo install -Dm655 "${SRCDIR}"/LICENSE "${pkgdir}"/usr/share/licenses/"${pkgname}"/LICENSE
}

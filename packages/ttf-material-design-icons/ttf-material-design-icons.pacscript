name="ttf-material-design-icons"
pkgname="ttf-material-design-icons"
version="4.0.0"
gives="${pkgname}"
breaks="${pkgname}"
#repology=("project: font-fira")
replace="${gives}"
url="https://github.com/ICE-GB/pacstall-programs/raw/650260359869ca5b6407ab29703fb04bcc42694a/packages/ttf-material-design-icons/MaterialIcons-Regular.ttf"
description="Material Design icons by Google"
# hash="b1b068d625d5e15d6ec0059209cec67bc4c46e39c4611b859d6f6680dbf23934"
maintainer="awnlzw <awnlzw@126.com>"


install() {
    sudo install -d "${pkgdir}"/usr/share/fonts/TTF
    sudo install -Dm644 "${SRCDIR}"/MaterialIcons-Regular.ttf "${pkgdir}"/usr/share/fonts/TTF/MaterialIcons-Regular.ttf
}

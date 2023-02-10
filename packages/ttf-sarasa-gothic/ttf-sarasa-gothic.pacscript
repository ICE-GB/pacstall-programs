name="ttf-sarasa-gothic"
pkgname="ttf-sarasa-gothic"
version="0.40.0"
gives="${pkgname}"
breaks="${pkgname}"
#repology=("project: font-fira")
replace="${gives}"
url="https://mirrors.tuna.tsinghua.edu.cn/github-release/be5invis/Sarasa-Gothic/LatestRelease/sarasa-gothic-ttc-${version}.7z"
description="A CJK programming font based on Iosevka and Source Han Sans. (TTC)"
#hash="5a3059fbde784f57a58ffb55e15660ae6022c724ecbc468f58c0aaa2311c05f9"
#license="OFL-1.1"
maintainer="awnlzw <awnlzw@126.com>"
prepare() {
    7z e *.7z
}

build() {
    true
}

install() {
    sudo install -d "${pkgdir}"/usr/share/fonts/sarasa-gothic/
    sudo install -Dm644 "${SRCDIR}"/*.ttc "${pkgdir}"/usr/share/fonts/sarasa-gothic
}
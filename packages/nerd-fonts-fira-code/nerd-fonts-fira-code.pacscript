name="nerd-fonts-fira-code"
pkgname="nerd-fonts-fira-code"
breaks="${pkgname}"
gives="${pkgname}"
#repology=("project: fonts:nerd-fonts")
version="2.3.3"
url="https://github.com/ryanoasis/nerd-fonts/releases/download/v${version}/FiraCode.zip"
description="Patched font Fira Code fron nerd-fonts library"
#hash="8b9b6c58081d179ecd50839a6b211dbd24b61e66d87715860129b6138982ee7b"
maintainer="awnzlw <awnlzw@126.com>"

install() {
  sudo install -d "${pkgdir}"/usr/share/fonts/TTF
  sudo rm "${SRCDIR:?}/"*"Windows Compatible.ttf"
  sudo install -Dm644 "${SRCDIR}/"*.ttf "${pkgdir}"/usr/share/fonts/TTF
}

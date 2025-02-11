maintainer="Paul Cosma (saenai) <paul.cosma97@gmail.com>"

name="go-bin"
pkgname="go"
version="1.19.4"
description="Go is an open source programming language that makes it easy to build simple, reliable, and efficient software."
url="https://go.dev/dl/go${version}.linux-amd64.tar.gz"
breaks="${pkgname} ${pkgname}-git ${pkgname}-app ${pkgname}-deb golang golang-git golang-deb golang-bin golang-app golang-go"
gives="golang-go"
replace="golang-go"
hash="c9c08f783325c4cf840a94333159cc937f05f75d36a8b307951d5bd959cf2ab8"
repology=("project: go")

__goroot="${STOWDIR}/usr/local/${name}"
__shell_rcs=("${homedir}/.bashrc" "${homedir}/.zshrc" "${homedir}/.profile")

install() {
  # Install binary
  sudo install -Dm755 "bin/go" "${STOWDIR}/${name}/usr/bin/go"
  sudo install -Dm755 "bin/gofmt" "${STOWDIR}/${name}/usr/bin/gofmt"

  sudo mkdir -p "${__goroot}"
  sudo cp -r "." "${__goroot}"
  sudo chmod -R 755 "${__goroot}"
}

postinst() {
  for shell_rc in "${__shell_rcs[@]}"; do
    if [[ -f ${shell_rc} ]]; then
      if __goroot_is_set "${shell_rc}"; then
        __clear_goroot "${shell_rc}"
      fi

      __set_goroot "${shell_rc}"
    fi
  done

  fancy_message info "Close and reopen your terminal to start using Go or run one of the following to use it now:"
  echo -e "\tbash: \tsource ~/.bashrc"
  echo -e "\tzsh: \tsource ~/.zshrc"
  echo -e "\tksh: \t. ~/.profile"
}

__goroot_is_set() {
  grep --only-matching -q "GOROOT=.*" < "$1"
  return $?
}

__clear_goroot() {
  sed -i '/export GOROOT=.*/d' "$1"
}

__set_goroot() {
  echo "export GOROOT=\"${__goroot}\"" | tee -a "$1" > /dev/null
}

removescript() {
  for shell_rc in "${__shell_rcs[@]}"; do
    if [[ -f ${shell_rc} ]]; then
      if __goroot_is_set "${shell_rc}"; then
        __clear_goroot "${shell_rc}"
      fi
    fi
  done
}

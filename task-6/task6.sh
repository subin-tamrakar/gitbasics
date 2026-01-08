#!/usr/bin/env bash
set -euo pipefail
set -x

USER="deployuser"
SHELL="/usr/sbin/nologin"
HOME_DIR="/home/${USER}"

if ! id "${USER}" &>/dev/null; then
    useradd \
        --create-home \
        --home-dir "${HOME_DIR}" \
        --shell "${SHELL}" \
        "${USER}"
fi

usermod --shell "${SHELL}" "${USER}"

passwd --lock "${USER}"

chown -R "${USER}:${USER}" "${HOME_DIR}"
chmod 750 "${HOME_DIR}"


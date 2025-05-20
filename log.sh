#! /usr/bin/env sh

log() {
  local msg="$@"
  jo time="$(date -uIseconds)" msg="${msg}"
}

debug() {
  if [ -n "${DEBUG:-}" ]
  then
    log "$@"
  fi
}

debug_variable() {
  local var="${1:-}"
  local msg="$var=$(eval echo \$${var})"
  debug "${msg}"
}

die() {
  log "$@"
  exit 1
}


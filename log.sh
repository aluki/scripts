#! /usr/bin/env sh

set -eu

log() {
  jo time="$(date -uIseconds)" msg="$@"
}

debug() {
  if [ -n "${DEBUG}" ]
  then
    log "$@"
  fi
}

debug_variable() {
  debug "$1=$(eval echo \$${1})"
  true
}

die() {
  log "$@"
  exit 1
}


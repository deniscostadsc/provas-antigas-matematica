#!/usr/bin/env bash

set -euo pipefail

# set -vx

URL="${1}"
TEMPFILE=$(mktemp)

function download_html_from_url {
    curl -s "${1}" > "${TEMPFILE}"
}

function get_pdf_links_from_html {
    hxnormalize -xe "${1}" |\
    hxselect -s '\n' '::attr(href)' |\
    grep -i '"[^"]*CMRJ[^"]*\.pdf"' |\
    # grep -i '"[^"]*gabarito[^"]*\.pdf"' |\
    sed 's/href="//g;s/"//g'
}

function get_domain {
    local url="$1"

    if [[ "${url}" =~ ^([^:/]+://[^/]+)/ ]]; then
        echo "${BASH_REMATCH[1]}"
    else
        echo "${url}"
    fi
}

function main {
    download_html_from_url "${URL}"
    links=$(get_pdf_links_from_html "${TEMPFILE}")

    for link in ${links}; do
        wget "$(get_domain "${URL}")/${link}"
    done
}

main
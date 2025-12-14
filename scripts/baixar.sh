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
    grep -i '"[^"]*matem[aá]tica[^"]*\.pdf"' |\
    # grep -i '"[^"]*gabarito[^"]*\.pdf"' |\
    sed 's/href="//g;s/"//g'
}

function main {
    download_html_from_url "${URL}"
    links=$(get_pdf_links_from_html "${TEMPFILE}")

    for link in ${links}; do
        wget "${URL}${link}"
    done
}

main
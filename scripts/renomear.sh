#!/usr/bin/env bash

# set -vx
set -euo pipefail

FOLDER="provas/olimpiadas-de-matematica/obmep/nivel-2/"
cd "$FOLDER"

function extract_year {
    local filename=${1}
    local year_pattern='([12][09][0-9][0-9])'

    if [[ "${filename}" =~ ${year_pattern} ]]; then
        echo "${BASH_REMATCH[1]}"
        return 0
    fi

    echo ""
    return 1
}

function extract_phase {
    local filename=${1}
    local phase_pattern='(f)(1)'

    if [[ "${filename}" =~ ${phase_pattern} ]]; then
        echo "fase-${BASH_REMATCH[2]}"
        return 0
    fi

    echo ""
}

function extract_level {
    local filename=${1}
    local level_pattern='(n)(2)'

    if [[ "${filename}" =~ ${level_pattern} ]]; then
        echo "nivel-${BASH_REMATCH[2]}"
        return 0
    fi

    echo ""
    return 1
}

function extract_file_type {
    local filename=${1}
    local file_type_pattern='^p'
    local year=$(extract_year "${filename}")

    if [[ "${filename}" =~ ${file_type_pattern} ]]; then
        echo "prova"
        return 0
    else
        echo "resolucao"
        return 0
    fi
}

declare -A phase_cache
declare -A count_per_year_cache
for file in *.pdf; do
    if [[ -f "${file}" ]]; then
        year=$(extract_year "${file}")
        phase=$(extract_phase "${file}")
        count_per_year_cache["${year}"]=$(( ${count_per_year_cache[${year}]:-0} + 1 ))
        if [[ -n "${year}" && -n "${phase}" ]]; then
            if [[ ! -v phase_cache["${year}"] ]]; then
                phase_cache["${year}"]="${phase}"
            fi
        fi
    fi
done


for file in *.pdf; do
    if [[ -f "${file}" ]]; then
        year=$(extract_year "${file}")
        level=$(extract_level "${file}")
        phase="${phase_cache[${year}]}"
        file_type=$(extract_file_type "${file}")

        mv "${file}" "${year}-${level}-${phase}-obm-${file_type}.pdf"
        echo
        echo "${file}"
        echo "${year}-${level}-${phase}-obm-${file_type}.pdf"
        echo 
    fi
done

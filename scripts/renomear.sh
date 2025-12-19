#!/usr/bin/env bash

# set -vx
set -euo pipefail

FOLDER="provas/concursos-militares/ensino-medio/colegio-militar/rio-de-janeiro/cmrj-2012-2013-gabarito-medio.pdf"

cd "$FOLDER"

function extract_year {
    local filename=${1}
    local year_pattern='cmrj-([0-9]{4})'

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
    # echo "ensino-fundamental"
    # return 0

    local filename=${1}
    local level_pattern='1ano'

    if [[ "${filename}" =~ ${level_pattern} ]]; then
        echo "ensino-medio"
        return 0
    else
        echo "ensino-fundamental"
        return 0
    fi

    # echo ""
    # return 1
}

function extract_file_type {
    local filename=${1}
    local file_type_pattern='GAB'
    local year=$(extract_year "${filename}")

    # if [[ "${filename}" =~ ${file_type_pattern} ]]; then
    #     echo "gabarito"
    #     return 0
    # elif [[ $((count_per_year_cache[${year}])) -gt 1 ]]; then
    #     echo "prova"
    # else
    #     echo "prova-e-gabarito"
    #     return 0
    # fi

    if [[ "${filename}" =~ ${file_type_pattern} ]]; then
        echo "prova-resolvida"
        return 0
    fi
    echo "prova"
    return 0
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
        # phase="${phase_cache[${year}]}"
        file_type=$(extract_file_type "${file}")
        new_name="${year}-${level}-colegio-militar-rio-de-janeiro-${file_type}.pdf"
        mv "${file}" "${new_name}"

        echo
        echo "${file}"
        echo "${new_name}"
        echo 
    fi
done

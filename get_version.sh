#!/bin/bash

function download() {
    echo "try to get the version: ${1} ..."
    rm json.hpp
    local latest_tag="$(curl "https://api.github.com/repos/nlohmann/json/tags" | jq -r '.[0].name')"
    wget -c "https://github.com/nlohmann/json/releases/download/${latest_tag}/json.hpp"
}

download ${1}

#!/bin/bash
# command_dev_gamedig_raw.sh function
# Author: Daniel Gibbs
# Website: https://gameservermanagers.com
# Description: Raw gamedig output of the server.

echo "================================="
echo "Gamedig Raw Output"
echo "================================="
echo""
if [ ! "$(command -v gamedig 2>/dev/null)" ]; then
	fn_print_fail_nl "gamedig not installed"
	core_exit.sh
fi

query_gamedig.sh
echo "gamedig --type \"${gamedigengine}\" --host \"${ip}\" --port \"${port}\"|jq"
echo""
echo "${gamedigraw}" | jq
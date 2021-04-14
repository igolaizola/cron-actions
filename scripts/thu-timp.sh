#!/bin/bash
d=$(date "+%Y-%m-%d" -dnext-thursday)
h=15:15
curl -X GET "https://maker.ifttt.com/trigger/log/with/key/$IFTTT_KEY?value1=thursday_timp_started%20$d%20$h" > /dev/null 2>&1
./bin/timpbot -email "$EMAIL1" -pass "$PASS1" -center "$CENTER1" -activity "$ACTIVITY2" -date "$d" -hour "$h" > /dev/null 2>&1
curl -X GET "https://maker.ifttt.com/trigger/log/with/key/$IFTTT_KEY?value1=$EMAIL1%20$d%20$h" > /dev/null 2>&1
h=16:30
./bin/timpbot -email "$EMAIL4" -pass "$PASS4" -center "$CENTER1" -activity "$ACTIVITY2" -date "$d" -hour "$h" > /dev/null 2>&1
curl -X GET "https://maker.ifttt.com/trigger/log/with/key/$IFTTT_KEY?value1=$EMAIL4%20$d%20$h" > /dev/null 2>&1
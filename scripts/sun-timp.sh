#!/bin/bash
d=$(date "+%Y-%m-%d" -dnext-sunday)
h=11:30
curl -X GET "https://maker.ifttt.com/trigger/log/with/key/$IFTTT_KEY?value1=sunday_timp_started%20$d%20$h" > /dev/null 2>&1
./bin/timpbot -email "$EMAIL1" -pass "$PASS1" -center "$CENTER1" -activity "$ACTIVITY1" -date "$d" -hour "$h" > /dev/null 2>&1
curl -X GET "https://maker.ifttt.com/trigger/log/with/key/$IFTTT_KEY?value1=$EMAIL1%20$d%20$h" > /dev/null 2>&1
./bin/timpbot -email "$EMAIL2" -pass "$PASS2" -center "$CENTER1" -activity "$ACTIVITY1" -date "$d" -hour "$h" > /dev/null 2>&1
curl -X GET "https://maker.ifttt.com/trigger/log/with/key/$IFTTT_KEY?value1=$EMAIL2%20$d%20$h" > /dev/null 2>&1
./bin/timpbot -email "$EMAIL3" -pass "$PASS3" -center "$CENTER1" -activity "$ACTIVITY1" -date "$d" -hour "$h" > /dev/null 2>&1
curl -X GET "https://maker.ifttt.com/trigger/log/with/key/$IFTTT_KEY?value1=$EMAIL3%20$d%20$h" > /dev/null 2>&1
./bin/timpbot -email "$EMAIL4" -pass "$PASS4" -center "$CENTER1" -activity "$ACTIVITY1" -date "$d" -hour "$h" > /dev/null 2>&1
curl -X GET "https://maker.ifttt.com/trigger/log/with/key/$IFTTT_KEY?value1=$EMAIL4%20$d%20$h" > /dev/null 2>&1
./bin/timpbot -email "$EMAIL5" -pass "$PASS5" -center "$CENTER1" -activity "$ACTIVITY1" -date "$d" -hour "$h" > /dev/null 2>&1
curl -X GET "https://maker.ifttt.com/trigger/log/with/key/$IFTTT_KEY?value1=$EMAIL5%20$d%20$h" > /dev/null 2>&1

#!/bin/bash
jack_control start
jack_control ds alsa
jack_control dps device hw:U192k
jack_control dps rate 48000
jack_control dps nperiods 3
jack_control dps period 256
sleep 1
a2j_control --ehw
a2j_control --start
sleep 1
qjackctl

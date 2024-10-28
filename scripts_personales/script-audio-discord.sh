#!/bin/bash

pactl load-module module-null-sink sink_name=transmit
pactl load-module module-null-sink sink_name=combined
pactl load-module module-loopback source=alsa_input.pci-0000_00_1f.3.analog-stereo sink=combined
pactl load-module module-loopback source=transmit.monitor sink=combined
pactl load-module module-loopback source=transmit.monitor sink=alsa_output.pci-0000_00_1f.3.analog-stereo

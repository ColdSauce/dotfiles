#! /usr/bin/env python

import os

energy_available = int(open('/sys/class/power_supply/BAT1/energy_now', 'rb').read())
energy_full = int(open('/sys/class/power_supply/BAT1/energy_full', 'rb').read())
bat_total = 100 * ((1.0 * energy_available) / energy_full)
if bat_total > 95:
    print("\uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004")
elif bat_total > 85:
    print("\uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf08a")
elif bat_total > 75:
    print("\uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf08a \uf08a")
elif bat_total > 65:
    print("\uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf08a \uf08a \uf08a")
elif bat_total > 55:
    print("\uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf08a \uf08a \uf08a \uf08a")
elif bat_total > 45:
    print("\uf004 \uf004 \uf004 \uf004 \uf004 \uf08a \uf08a \uf08a \uf08a \uf08a")
elif bat_total > 35:
    print("\uf004 \uf004 \uf004 \uf004 \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a")
elif bat_total > 25:
    print("\uf004 \uf004 \uf004 \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a")
elif bat_total > 15:
    print("\uf004 \uf004 \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a")
elif bat_total > 5:
    print("\uf004 \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a")
else:
    print("\uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a")


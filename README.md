# mi600

This is a simple bash command-line tool for direct solar data requests to the Bosswerk MI600, MI300 and similar inverters like the deye Sun-600G3 inverters. It can read the actual solar power, cumulative daily earned energy and many other inverter informations.
The intention is that this script can be run repeatedly like every minute / hour for continous data recording.

## Requirements

- curl must be installed.

## Development


Install:
```sh
sudo make install
```

Uninstall:
```sh
sudo make uninstall
```

## Usage
```
mi600_simple_mysql
```
## Available data:\<type\>:
The following data may be available in the web page pulled from the mi600 inverter:
- webdata_sn
- webdata_msvn
- webdata_ssvn
- webdata_pv_type
- webdata_rate_p
- webdata_now_p
- webdata_today_e
- webdata_total_e
- webdata_alarm
- webdata_utime
- cover_mid
- cover_ver
- cover_wmode
- cover_ap_ssid
- cover_ap_ip
- cover_ap_mac
- cover_sta_ssid
- cover_sta_rssi
- cover_sta_ip
- cover_sta_mac
- status_a
- status_b
- status_c


https://github.com/MartinRas80/mi600_mysql_simple

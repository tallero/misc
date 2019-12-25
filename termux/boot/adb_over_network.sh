#!/data/data/com.termux/files/usr/bin/env bash

su -c "setprop service.adb.tcp.port 5555 && stop adbd && start adb"

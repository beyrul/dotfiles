# XPS 13 - 2016 - 16Gb - 512Gb

### Keyboard illumination

- install `libsmbios`
- get current status `smbios-keyboard-ctl --get-status`
- get capabilities `smbios-keyboard-ctl -i`
- set illumination timeout to 30 minutes `smbios-keyboard-ctl --set-timeout 30m`

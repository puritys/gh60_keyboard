
#  Name:       GH60 RevA/B/C
#  Firmware:   Default, No-Console, AVRISP mkII
#  Bootloader: atmel_dfu, lufa_dfu

tkg_revabc:
# git clone git@github.com:kairyu/tkg-toolkit.git ./tkg-toolkit
#	./tkg-toolkit/mac/reflash.sh gh60-reva_b_c_light_ok.hex
	./tkg-toolkit/mac/reflash.sh firmware/reva_b_c/keymap.eep

mac:
	dfu-programmer atmega32u4 erase --force
	dfu-programmer atmega32u4 flash firmware/tmk_keyboard_custom/gh60_lufa_good_mac.hex
	dfu-programmer atmega32u4 reset


debug:
	./tools/hid_listen.mac
	# Enable debug: left shift + right shift + d

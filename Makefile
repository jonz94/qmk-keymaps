compile-planck:
	docker run -it --rm -v ${CURDIR}/planck:/qmk_firmware/keyboards/planck/keymaps/jonz94 qmkfm/qmk_firmware sh -c 'qmk compile -kb planck/rev6 -km jonz94 && cp planck_rev6_jonz94.bin /qmk_firmware/keyboards/planck/keymaps/jonz94/'

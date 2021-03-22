compile-planck:
	docker run -it --rm -v ${CURDIR}/planck:/qmk_firmware/keyboards/planck/keymaps/jonz94 qmkfm/qmk_firmware sh -c 'qmk compile -kb planck/rev6 -km jonz94 && cp planck_rev6_jonz94.bin /qmk_firmware/keyboards/planck/keymaps/jonz94/'

compile-dztech-dz60rgb-wkl-v2-via:
	docker run -it --rm -v ${CURDIR}/dztech-dz60rgb-wkl-v2-via:/qmk_firmware/keyboards/dztech/dz60rgb_wkl/keymaps/via-jonz94 qmkfm/qmk_firmware sh -c 'qmk compile -kb dztech/dz60rgb_wkl/v2 -km via-jonz94 && cp dztech_dz60rgb_wkl_v2_via-jonz94.hex /qmk_firmware/keyboards/dztech/dz60rgb_wkl/keymaps/via-jonz94/dztech-dz60rgb-wkl-v2-via-jonz94.hex'

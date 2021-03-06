all:
	@$(MAKE) -s compile-planck
	@$(MAKE) -s compile-planck-via
	@$(MAKE) -s compile-preonic-via
	@$(MAKE) -s compile-dztech-dz60rgb-wkl-v2-via
	@$(MAKE) -s compile-dztech-dz60rgb-ansi-v2-via
	@$(MAKE) -s compile-idobo-via
	@$(MAKE) -s compile-plexus75-via
	@$(MAKE) -s compile-xd75-via

compile-planck:
	docker run -it --rm -v ${CURDIR}/planck:/qmk_firmware/keyboards/planck/keymaps/jonz94 qmkfm/qmk_firmware sh -c 'qmk compile -kb planck/rev6 -km jonz94 && cp planck_rev6_jonz94.bin /qmk_firmware/keyboards/planck/keymaps/jonz94/planck-rev6-jonz94.bin'

compile-planck-via:
	docker run -it --rm -v ${CURDIR}/planck-via:/qmk_firmware/keyboards/planck/keymaps/jonz94 qmkfm/qmk_firmware sh -c 'qmk compile -kb planck/rev6 -km jonz94 && cp planck_rev6_jonz94.bin /qmk_firmware/keyboards/planck/keymaps/jonz94/planck-rev6-via-jonz94.bin'

compile-preonic-via:
	docker run -it --rm -v ${CURDIR}/preonic-via:/qmk_firmware/keyboards/preonic qmkfm/qmk_firmware sh -c 'qmk compile -kb preonic/rev3 -km via && cp preonic_rev3_via.bin /qmk_firmware/keyboards/preonic/olkb-preonic-rev3-via-mixedfeelings.bin'

compile-dztech-dz60rgb-wkl-v2-via:
	docker run -it --rm -v ${CURDIR}/dztech-dz60rgb-wkl-v2-via:/qmk_firmware/keyboards/dztech/dz60rgb_wkl/keymaps/via_jonz94 qmkfm/qmk_firmware sh -c 'qmk compile -kb dztech/dz60rgb_wkl/v2 -km via_jonz94 && cp dztech_dz60rgb_wkl_v2_via_jonz94.hex /qmk_firmware/keyboards/dztech/dz60rgb_wkl/keymaps/via_jonz94/dztech-dz60rgb-wkl-v2-via-jonz94.hex'

compile-dztech-dz60rgb-ansi-v2-via:
	docker run -it --rm -v ${CURDIR}/dztech-dz60rgb-ansi-v2-via:/qmk_firmware/keyboards/dztech/dz60rgb_ansi/keymaps/via_jonz94 qmkfm/qmk_firmware sh -c 'qmk compile -kb dztech/dz60rgb_ansi/v2 -km via_jonz94 && cp dztech_dz60rgb_ansi_v2_via_jonz94.hex /qmk_firmware/keyboards/dztech/dz60rgb_ansi/keymaps/via_jonz94/dztech-dz60rgb-ansi-v2-via-jonz94.hex'

compile-idobo-via:
	docker run -it --rm -v ${CURDIR}/idobo-via:/qmk_firmware/keyboards/idobo/keymaps/via_jonz94 qmkfm/qmk_firmware sh -c 'qmk compile -kb idobo -km via_jonz94 && cp idobo_via_jonz94.hex /qmk_firmware/keyboards/idobo/keymaps/via_jonz94/idobo-via-jonz94.hex'

compile-plexus75-via:
	docker run -it --rm -v ${CURDIR}/plexus75-via:/qmk_firmware/keyboards/plexus75/keymaps/via_jonz94 qmkfm/qmk_firmware sh -c 'qmk compile -kb plexus75 -km via_jonz94 && cp plexus75_via_jonz94.hex /qmk_firmware/keyboards/plexus75/keymaps/via_jonz94/plexus75-via-jonz94.hex'

compile-xd75-via:
	docker run -it --rm -v ${CURDIR}/xd75-via:/qmk_firmware/keyboards/xd75/keymaps/via_jonz94 qmkfm/qmk_firmware sh -c 'qmk compile -kb xd75 -km via_jonz94 && cp xd75_via_jonz94.hex /qmk_firmware/keyboards/xd75/keymaps/via_jonz94/xd75-via-jonz94.hex'

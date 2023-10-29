all:
	@$(MAKE) -s compile-planck
	@$(MAKE) -s compile-planck-via
	@$(MAKE) -s compile-preonic-via
	@$(MAKE) -s compile-ergodox-via
	@$(MAKE) -s compile-dztech-dz60rgb-wkl-v2-via
	@$(MAKE) -s compile-dztech-dz60rgb-ansi-v2-via
	@$(MAKE) -s compile-hineybush-h60-via
	@$(MAKE) -s compile-idobao-id75-v1-via
	@$(MAKE) -s compile-iron160-h-via
	@$(MAKE) -s compile-nk65-v1.4-via
	@$(MAKE) -s compile-plexus75-via
	@$(MAKE) -s compile-plexus75-he-via
	@$(MAKE) -s compile-plx-via
	@$(MAKE) -s compile-wt60-b-via
	@$(MAKE) -s compile-wt60-h1-via
	@$(MAKE) -s compile-xd75-via

compile-planck:
	docker run -it --rm -v ${CURDIR}/planck:/qmk_firmware/keyboards/planck/keymaps/jonz94 jonz94/qmk_firmware sh -c 'qmk compile -kb planck/rev6 -km jonz94 && cp planck_rev6_jonz94.bin /qmk_firmware/keyboards/planck/keymaps/jonz94/planck-rev6-jonz94.bin'

compile-planck-via:
	docker run -it --rm -v ${CURDIR}/planck-via:/qmk_firmware/keyboards/planck/keymaps/jonz94 jonz94/qmk_firmware sh -c 'qmk compile -kb planck/rev6 -km jonz94 && cp planck_rev6_jonz94.bin /qmk_firmware/keyboards/planck/keymaps/jonz94/planck-rev6-via-jonz94.bin'

compile-preonic-via:
	docker run -it --rm -v ${CURDIR}/preonic-via:/qmk_firmware/keyboards/preonic/keymaps/via_jonz94 jonz94/qmk_firmware sh -c 'qmk compile -kb preonic/rev3 -km via_jonz94 && cp preonic_rev3_via_jonz94.bin /qmk_firmware/keyboards/preonic/keymaps/via_jonz94/preonic-rev3-via-jonz94.bin'

compile-ergodox-via:
	docker run -it --rm -v ${CURDIR}/ergodox-via:/qmk_firmware/keyboards/ergodox_ez/keymaps/via jonz94/qmk_firmware sh -c 'qmk compile -kb ergodox_ez -km via && cp ergodox_ez_base_via.hex /qmk_firmware/keyboards/ergodox_ez/keymaps/via/ergodox-ez-base-via.hex'

compile-dztech-dz60rgb-wkl-v2-via:
	docker run -it --rm -v ${CURDIR}/dztech-dz60rgb-wkl-v2-via:/qmk_firmware/keyboards/dztech/dz60rgb_wkl/keymaps/via_jonz94 jonz94/qmk_firmware sh -c 'qmk compile -kb dztech/dz60rgb_wkl/v2 -km via_jonz94 && cp dztech_dz60rgb_wkl_v2_via_jonz94.hex /qmk_firmware/keyboards/dztech/dz60rgb_wkl/keymaps/via_jonz94/dztech-dz60rgb-wkl-v2-via-jonz94.hex'

compile-dztech-dz60rgb-ansi-v2-via:
	docker run -it --rm -v ${CURDIR}/dztech-dz60rgb-ansi-v2-via:/qmk_firmware/keyboards/dztech/dz60rgb_ansi/keymaps/via_jonz94 jonz94/qmk_firmware sh -c 'qmk compile -kb dztech/dz60rgb_ansi/v2 -km via_jonz94 && cp dztech_dz60rgb_ansi_v2_via_jonz94.hex /qmk_firmware/keyboards/dztech/dz60rgb_ansi/keymaps/via_jonz94/dztech-dz60rgb-ansi-v2-via-jonz94.hex'

compile-hineybush-h60-via:
	docker run -it --rm -v ${CURDIR}/hineybush-h60-via:/qmk_firmware/keyboards/hineybush/h60/keymaps/via_jonz94 jonz94/qmk_firmware sh -c 'qmk compile -kb hineybush/h60 -km via_jonz94 && cp hineybush_h60_via_jonz94.hex /qmk_firmware/keyboards/hineybush/h60/keymaps/via_jonz94/hineybush-h60-via-jonz94.hex'

compile-idobao-id75-v1-via:
	docker run -it --rm -v ${CURDIR}/idobao-id75-v1-via:/qmk_firmware/keyboards/idobao/id75/keymaps/via_jonz94 jonz94/qmk_firmware sh -c 'qmk compile -kb idobao/id75/v1 -km via_jonz94 && cp idobao_id75_v1_via_jonz94.hex /qmk_firmware/keyboards/idobao/id75/keymaps/via_jonz94/idobao-id75-v1-via-jonz94.hex'

compile-iron160-h-via:
	docker run -it --rm -v ${CURDIR}/iron160-h-via:/qmk_firmware/keyboards/smithrune/iron160/iron160_h/keymaps/via_jonz94 jonz94/qmk_firmware sh -c 'qmk compile -kb smithrune/iron160/iron160_h -km via_jonz94 && cp /qmk_firmware/smithrune_iron160_iron160_h_via_jonz94.bin /qmk_firmware/keyboards/smithrune/iron160/iron160_h/keymaps/via_jonz94/smithrune-iron160-h-via-jonz94.bin'

compile-nk65-v1.4-via:
	docker run -it --rm -v ${CURDIR}/nk65-v1.4-via:/qmk_firmware/keyboards/novelkeys/nk65/keymaps/via_jonz94 jonz94/qmk_firmware sh -c 'qmk compile -kb novelkeys/nk65/v1_4 -km via_jonz94 && cp novelkeys_nk65_v1_4_via_jonz94.bin /qmk_firmware/keyboards/novelkeys/nk65/keymaps/via_jonz94/novelkeys-nk65-v1.4-via-jonz94.bin'

compile-plexus75-via:
	docker run -it --rm -v ${CURDIR}/plexus75-via:/qmk_firmware/keyboards/checkerboards/plexus75/keymaps/via_jonz94 jonz94/qmk_firmware sh -c 'qmk compile -kb checkerboards/plexus75 -km via_jonz94 && cp checkerboards_plexus75_via_jonz94.hex /qmk_firmware/keyboards/checkerboards/plexus75/keymaps/via_jonz94/plexus75-via-jonz94.hex'

compile-plx-via:
	docker run -it --rm -v ${CURDIR}/plx-via:/qmk_firmware/keyboards/plx/keymaps/via_jonz94 jonz94/qmk_firmware sh -c 'qmk compile -kb plx -km via_jonz94 && cp plx_via_jonz94.hex /qmk_firmware/keyboards/plx/keymaps/via_jonz94/plx-via-jonz94.hex'

compile-plexus75-he-via:
	docker run -it --rm -v ${CURDIR}/plexus75-he-via:/qmk_firmware/keyboards/checkerboards/plexus75_he/keymaps/via_jonz94 jonz94/qmk_firmware sh -c 'qmk compile -kb checkerboards/plexus75_he -km via_jonz94 && cp checkerboards_plexus75_he_via_jonz94.hex /qmk_firmware/keyboards/checkerboards/plexus75_he/keymaps/via_jonz94/plexus75-he-via-jonz94.hex'

compile-wt60-b-via:
	docker run -it --rm -v ${CURDIR}/wt60-b-via:/qmk_firmware/keyboards/wilba_tech/wt60_b/keymaps/via_jonz94 jonz94/qmk_firmware sh -c 'qmk compile -kb wilba_tech/wt60_b -km via_jonz94 && cp wilba_tech_wt60_b_via_jonz94.hex /qmk_firmware/keyboards/wilba_tech/wt60_b/keymaps/via_jonz94/wt60-b-via-jonz94.hex'

compile-wt60-h1-via:
	docker run -it --rm -v ${CURDIR}/wt60-h1-via:/qmk_firmware/keyboards/wilba_tech/wt60_h1/keymaps/via_jonz94 jonz94/qmk_firmware sh -c 'qmk compile -kb wilba_tech/wt60_h1 -km via_jonz94 && cp wilba_tech_wt60_h1_via_jonz94.hex /qmk_firmware/keyboards/wilba_tech/wt60_h1/keymaps/via_jonz94/wt60-h1-via-jonz94.hex'

compile-xd75-via:
	docker run -it --rm -v ${CURDIR}/xd75-via:/qmk_firmware/keyboards/xiudi/xd75/keymaps/via_jonz94 jonz94/qmk_firmware sh -c 'qmk compile -kb xiudi/xd75 -km via_jonz94 && cp xiudi_xd75_via_jonz94.hex /qmk_firmware/keyboards/xiudi/xd75/keymaps/via_jonz94/xd75-via-jonz94.hex'

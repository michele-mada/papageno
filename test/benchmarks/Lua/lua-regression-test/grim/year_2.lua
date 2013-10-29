CheckFirstTime("year_2.lua")
cut_scene.shanghai = function(arg1) -- line 9
    cutscene_menu:enable_cutscene("shanghai")
    START_CUT_SCENE()
    set_override(cut_scene.skip_shanghai, cut_scene)
    ce:switch_to_set()
    RunFullscreenMovie("shanghai.snm")
    EngineDisplay(FALSE)
    lm:switch_to_set()
    manny:put_in_set(lm)
    manny:setpos(-0.191064, -2.65641, 0.015)
    manny:setrot(0, 142.729, 0)
    lm:current_setup(lm_gngms)
    velasco:face_manny()
    EngineDisplay(TRUE)
    break_here()
    velasco:say_line("/syve096/")
    wait_for_message()
    velasco:say_line("/syve097/")
    manny:head_look_at_point(manny:getpos(), 120)
    wait_for_message()
    manny:say_line("/syma098/")
    wait_for_message()
    manny:say_line("/syma099/")
    manny:head_look_at(nil, 120)
    wait_for_message()
    velasco:say_line("/syve100/")
    wait_for_message()
    velasco:say_line("/syve101/")
    wait_for_message()
    velasco:say_line("/syve102/")
    wait_for_message()
    manny:say_line("/syma103/")
    manny:head_look_at(lm.velasco_obj)
    start_script(manny.turn_left, manny, 90)
    wait_for_message()
    manny:say_line("/syma104/")
    manny:head_look_at(lm.limbo, 140)
    wait_for_message()
    manny:head_look_at(lm.velasco_obj, 140)
    start_script(velasco.face_bottle, velasco)
    velasco:say_line("/syve105/")
    END_CUT_SCENE()
end
cut_scene.skip_shanghai = function(arg1) -- line 58
    kill_override()
    lm:switch_to_set()
    lm:current_setup(lm_gngms)
    single_start_script(velasco.face_bottle, velasco)
    manny:put_in_set(lm)
    manny:setpos(-0.191064, -2.65641, 0.015)
    manny:setrot(0, 142.729, 0)
    manny:head_look_at(lm.velasco_obj)
end
cut_scene.snapshot = function(arg1) -- line 69
    bi:snapshot()
end
dofile("toto_drop_na.lua")
cut_scene.passout = function(arg1) -- line 75
    si:switch_to_set()
    si.naranja_out = TRUE
    toto:stop_chore()
    naranja:stop_chore()
    si.booze_actor:play_chore(1)
    stop_script(si.naranja_drink)
    stop_script(si.toto_controller)
    si.booze:make_untouchable()
    si.naranja_obj:make_untouchable()
    preload_sfx("siNaDrop.wav")
    preload_sfx("siNaFeet.wav")
    START_CUT_SCENE("no head")
    manny:setpos(1.17039, -1.2139, 0)
    manny:setrot(0, 280.656, 0)
    manny:head_look_at(si.cot)
    toto:setpos(1.12828, -0.837, 0)
    toto:setrot(0, 180, 0)
    toto:set_costume("toto_drop_na.cos")
    toto:set_mumble_chore(toto_drop_na_mumble)
    toto:set_talk_chore(1, toto_drop_na_no_talk)
    toto:set_talk_chore(2, toto_drop_na_a)
    toto:set_talk_chore(3, toto_drop_na_c)
    toto:set_talk_chore(4, toto_drop_na_e)
    toto:set_talk_chore(5, toto_drop_na_f)
    toto:set_talk_chore(6, toto_drop_na_l)
    toto:set_talk_chore(7, toto_drop_na_m)
    toto:set_talk_chore(8, toto_drop_na_o)
    toto:set_talk_chore(9, toto_drop_na_t)
    toto:set_talk_chore(10, toto_drop_na_u)
    toto:play_chore(0)
    naranja:push_costume("na_on_cot.cos")
    naranja:setpos(1.36044, -0.6715, 0.117)
    naranja:setrot(90, 0, 0)
    naranja:play_chore(0)
    naranja:play_chore(naranja_stop_talk, "naranja.cos")
    manny:play_chore(mc_reach_low, "mc.cos")
    toto:say_line("/psots04a/")
    start_sfx("siNaDrop.wav")
    wait_for_sound("siNaDrop.wav")
    start_sfx("siNaFeet.wav")
    toto:wait_for_message()
    toto:say_line("/psots04b/")
    sleep_for(1000)
    manny:head_look_at(toto)
    toto:wait_for_message()
    toto:say_line("/psots07/")
    sleep_for(3000)
    manny:head_look_at(si.cot)
    manny:stop_chore(nil, "mc.cos")
    start_script(manny.walk_and_face, manny, 1.16449, -0.978787, 0, 0, 257.166, 0)
    wait_for_script(manny.walk_and_face)
    manny:push_costume("mc_wait_idles.cos")
    manny:run_chore(0, "mc_wait_idles.cos")
    manny:pop_costume()
    manny:stop_chore()
    toto:wait_for_message()
    END_CUT_SCENE()
    if cutSceneLevel > 0 then
        cutSceneLevel = 0
    end
    si:set_up_actors()
end
cut_scene.idcorpse = function(arg1) -- line 148
    made_vacancy = TRUE
    START_CUT_SCENE()
    lm:switch_to_set("noenter")
    if not ship_bottle_actor then
        ship_bottle_actor = Actor:create(nil, nil, nil, "bottle")
    end
    ship_bottle_actor:set_costume("ship_bottle.cos")
    ship_bottle_actor:put_in_set(lm)
    ship_bottle_actor:setpos(0.379959, -3.12955, 0.2457)
    ship_bottle_actor:setrot(89, 270, 0)
    lm.water.hObjectState = lm:add_object_state(lm_gngms, "lm_water1.bm", nil, OBJSTATE_UNDERLAY)
    lm.water:set_object_state("lm_water.cos")
    lm.water:play_chore_looping(0)
    lm:current_setup(lm_gngms)
    velasco:default()
    velasco:put_in_set(lm)
    velasco:push_costume("ve_talk_to_membrillo.cos")
    velasco:setpos(0.42548, -2.86345, 0.01439)
    velasco:setrot(0, 169.005, 0)
    system_prefs:set_voice_effect("OFF")
    velasco:play_chore(ve_talk_to_membrillo_fix_model, "ve_talk_to_membrillo.cos")
    sleep_for(4000)
    start_sfx("phonRing.WAV")
    set_pan("phonRing.WAV", 100)
    velasco:wait_for_chore(ve_talk_to_membrillo_fix_model, "ve_talk_to_membrillo.cos")
    velasco:play_chore(ve_talk_to_membrillo_phone, "ve_talk_to_membrillo.cos")
    sleep_for(2800)
    velasco:say_line("/idcvl01/")
    velasco:wait_for_chore(ve_talk_to_membrillo_phone, "ve_talk_to_membrillo.cos")
    velasco:wait_for_message()
    mg:switch_to_set("noenter")
    mg:current_setup(1)
    system_prefs:set_voice_effect("Basic Reverb")
    manny:default("cafe")
    manny:put_in_set(mg)
    manny:setpos(-0.0111617, 0.279955, 0.55)
    manny:setrot(0, 199.947, 0)
    membrillo:default()
    membrillo:put_in_set(mg)
    membrillo:setpos(0.0687, -0.3218, 0.55)
    membrillo:setrot(0, 160.024, 0)
    membrillo:push_costume("membrillo_talk_to_ve.cos")
    membrillo:play_chore(membrillo_hide_tool, "membrillo.cos")
    membrillo:play_chore(membrillo_talk_to_ve_start, "membrillo_talk_to_ve.cos")
    membrillo:say_line("/idcmb02a/")
    membrillo:wait_for_message()
    membrillo:say_line("/idcmb02b/")
    membrillo:wait_for_message()
    membrillo:wait_for_chore(membrillo_talk_to_ve_start, "membrillo_talk_to_ve.cos")
    membrillo:play_chore(membrillo_talk_to_ve_middle, "membrillo_talk_to_ve.cos")
    membrillo:say_line("/idcmb02c/")
    membrillo:wait_for_message()
    membrillo:wait_for_chore(membrillo_talk_to_ve_middle, "membrillo_talk_to_ve.cos")
    membrillo:play_chore(membrillo_talk_to_ve_end, "membrillo_talk_to_ve.cos")
    membrillo:say_line("/idcmb02d/")
    membrillo:wait_for_message()
    membrillo:wait_for_chore(membrillo_talk_to_ve_end, "membrillo_talk_to_ve.cos")
    lm:switch_to_set("noenter")
    lm:current_setup(lm_gngms)
    ship_bottle_actor:set_costume("ship_bottle.cos")
    ship_bottle_actor:put_in_set(lm)
    ship_bottle_actor:setpos(0.379959, -3.12955, 0.2457)
    ship_bottle_actor:setrot(89, 270, 0)
    lm.water.hObjectState = lm:add_object_state(lm_gngms, "lm_water1.bm", nil, OBJSTATE_UNDERLAY)
    lm.water:set_object_state("lm_water.cos")
    lm.water:play_chore_looping(0)
    system_prefs:set_voice_effect("OFF")
    velasco:default()
    velasco:put_in_set(lm)
    velasco:push_costume("ve_talk_to_membrillo.cos")
    velasco:setpos(0.42548, -2.86345, 0.01439)
    velasco:setrot(0, 169.005, 0)
    velasco:play_chore(ve_talk_to_membrillo_what, "ve_talk_to_membrillo.cos")
    velasco:say_line("/idcvl03a/")
    velasco:wait_for_message()
    velasco:wait_for_chore(ve_talk_to_membrillo_what, "ve_talk_to_membrillo.cos")
    velasco:play_chore(ve_talk_to_membrillo_how, "ve_talk_to_membrillo.cos")
    velasco:say_line("/idcvl03b/")
    velasco:wait_for_message()
    velasco:wait_for_chore(ve_talk_to_membrillo_how, "ve_talk_to_membrillo.cos")
    velasco:play_chore(ve_talk_to_membrillo_sprouted, "ve_talk_to_membrillo.cos")
    velasco:say_line("/idcvl03c/")
    velasco:wait_for_message()
    velasco:wait_for_chore(ve_talk_to_membrillo_sprouted, "ve_talk_to_membrillo.cos")
    velasco:play_chore(ve_talk_to_membrillo_hell, "ve_talk_to_membrillo.cos")
    velasco:say_line("/idcvl03d/")
    velasco:wait_for_message()
    velasco:wait_for_chore(ve_talk_to_membrillo_hell, "ve_talk_to_membrillo.cos")
    velasco:play_chore(ve_talk_to_membrillo_sailor, "ve_talk_to_membrillo.cos")
    velasco:say_line("/idcvl03e/")
    velasco:wait_for_message()
    sleep_for(1000)
    velasco:say_line("/idcvl03f/")
    velasco:wait_for_chore(ve_talk_to_membrillo_sailor, "ve_talk_to_membrillo.cos")
    velasco:play_chore(ve_talk_to_membrillo_hangup, "ve_talk_to_membrillo.cos")
    velasco:wait_for_message()
    velasco:wait_for_chore(ve_talk_to_membrillo_hangup, "ve_talk_to_membrillo.cos")
    velasco:play_chore(ve_talk_to_membrillo_sigh, "ve_talk_to_membrillo.cos")
    velasco:say_line("/idcvl04/")
    velasco:wait_for_message()
    velasco:wait_for_chore(ve_talk_to_membrillo_sigh, "ve_talk_to_membrillo.cos")
    velasco:pop_costume()
    mg:switch_to_set("noenter")
    mg:current_setup(1)
    system_prefs:set_voice_effect("Basic Reverb")
    manny:default("cafe")
    manny:put_in_set(mg)
    manny:setpos(-0.0111617, 0.279955, 0.55)
    manny:setrot(0, 199.947, 0)
    membrillo:default()
    membrillo:put_in_set(mg)
    membrillo:setpos(mg.corpse_2.mem_pnt[0].x, mg.corpse_2.mem_pnt[0].y, mg.corpse_2.mem_pnt[0].z)
    membrillo:setrot(mg.corpse_2.mem_pnt[0].pitch, mg.corpse_2.mem_pnt[0].yaw, mg.corpse_2.mem_pnt[0].roll)
    membrillo:play_chore(membrillo_hide_tool, "membrillo.cos")
    membrillo:play_chore(membrillo_stop_talk, "membrillo.cos")
    membrillo:play_chore(membrillo_rest_to_lkma, "membrillo.cos")
    membrillo:say_line("/idcmb05a/")
    membrillo:wait_for_chore(membrillo_rest_to_lkma, "membrillo.cos")
    membrillo:stop_chore(membrillo_rest_to_lkma, "membrillo.cos")
    membrillo:play_chore_looping(membrillo_lookat_manny, "membrillo.cos")
    membrillo:wait_for_message()
    membrillo:say_line("/idcmb05b/")
    membrillo:wait_for_message()
    membrillo:say_line("/idcmb05c/")
    membrillo:wait_for_message()
    membrillo:say_line("/idcmb05d/")
    membrillo:wait_for_message()
    membrillo:say_line("/idcmb05e/")
    membrillo:wait_for_message()
    membrillo:say_line("/idcmb05f/")
    membrillo:stop_chore(membrillo_lookat_manny, "membrillo.cos")
    membrillo:play_chore(membrillo_lkma_to_rest, "membrillo.cos")
    membrillo:wait_for_message()
    END_CUT_SCENE()
    membrillo:free()
    velasco:free()
    lm.water:free_object_state()
    ship_bottle_actor:free()
    pc:come_out_door(pc.mg_door)
end
cut_scene.normarae = function(arg1) -- line 298
    dd.terry_arrested = TRUE
    dd:switch_to_set()
    cutscene_menu:enable_cutscene("normarae")
    START_CUT_SCENE()
    set_override(cut_scene.skip_normarae, cut_scene)
    RunFullscreenMovie("normarae.snm")
    manny:put_in_set(dd)
    dd:current_setup(dd_estws)
    dd:set_up_barrel_bees()
    terry:free()
    manny:setpos(2.43258, -3.10048, 0)
    manny:setrot(0, 294.916, 0)
    manny:head_look_at(nil)
    manny:walkto(3.85481, -2.86843, 0, 271.475, 0)
    END_CUT_SCENE()
end
cut_scene.skip_normarae = function(arg1) -- line 320
    kill_override()
    StopMovie()
    manny:put_in_set(dd)
    dd:current_setup(dd_estws)
    dd:set_up_barrel_bees()
    terry:free()
    manny:setpos(3.85481, -2.86843, 0)
    manny:setrot(0, 271.475, 0)
end
cut_scene.loladies = function(arg1) -- line 332
    START_CUT_SCENE()
    bi.seen_kiss = TRUE
    hl.nick_gone = TRUE
    hl.virago_obj:make_untouchable()
    hl.case:make_untouchable()
    hl.case:free()
    sl.bomb_detonated = TRUE
    sl.key:get()
    lx:switch_to_set()
    lx.seen_lola = TRUE
    cur_puzzle_state[29] = TRUE
    cutscene_menu:enable_cutscene("loladies")
    set_override(cut_scene.skip_loladies)
    stop_sound("liteHse.imu")
    stop_script(foghorn_sfx)
    RunFullscreenMovie("loladies.snm")
    start_script(foghorn_sfx)
    start_script(lx.camerachange, lx, nil, lx_extoh)
    lx:come_out_door(lx.top)
    manny:say_line("/lxma011/")
    manny:twist_head_gesture()
    wait_for_message()
    manny:head_look_at({ x = 0.0492827, y = 1.15038, z = 3.03 })
    sleep_for(500)
    manny:play_chore(mc_reach_low, "mc.cos")
    sleep_for(500)
    manny:generic_pickup(lx.lengua)
    manny:wait_for_chore(mc_reach_low, "mc.cos")
    manny:stop_chore(mc_reach_low, "mc.cos")
    manny:wait_for_message()
    look_at_item_in_hand()
    manny:wait_for_message()
    IrisDown(320, 240, 1000)
    sleep_for(1000)
    manny:setpos(-10.8367, -14.7376, 0)
    manny:setrot(0, 113, 0)
    IrisUp(320, 240, 1000)
    END_CUT_SCENE()
end
cut_scene.skip_loladies = function(arg1) -- line 379
    kill_override()
    StopMovie()
    start_script(foghorn_sfx)
    start_script(lx.camerachange, lx, nil, lx_dokla)
    lx.lengua:get()
    manny:setpos(-10.8367, -14.7376, 0)
    manny:setrot(0, 113, 0)
    IrisUp(0, 0, 1)
end
cut_scene.puzl39 = function() -- line 393
    dd.strike_on = TRUE
    tb.blackmail_photo:put_in_limbo()
    START_CUT_SCENE()
    manny:ignore_boxes()
    terry:ignore_boxes()
    virago:ignore_boxes()
    pc:switch_to_set()
    manny:put_in_set(pc)
    virago:put_in_set(pc)
    terry:put_in_set(pc)
    terry:default()
    terry:push_costume("tm_IDPHOTO.cos")
    manny:push_costume("ma_IDPHOTO.cos")
    virago:set_costume("nick_idles.cos")
    virago:set_mumble_chore(nick_idles_mumble)
    virago:set_talk_chore(1, nick_idles_no_talk)
    virago:set_talk_chore(2, nick_idles_a)
    virago:set_talk_chore(3, nick_idles_c)
    virago:set_talk_chore(4, nick_idles_e)
    virago:set_talk_chore(5, nick_idles_f)
    virago:set_talk_chore(6, nick_idles_l)
    virago:set_talk_chore(7, nick_idles_m)
    virago:set_talk_chore(8, nick_idles_o)
    virago:set_talk_chore(9, nick_idles_t)
    virago:set_talk_chore(10, nick_idles_u)
    virago:push_costume("nv_IDPHOTO.cos")
    terry:setpos(0, 0, 0)
    terry:setrot(0, 180, 0)
    manny:set_softimage_pos(5.8562, 0, -1.9891)
    manny:setrot(0, 180, 0)
    virago:set_softimage_pos(8.7324, 0, -1.412)
    virago:setrot(0, 180, 0)
    pc:current_setup(pc_3_idfoto)
    terry:play_chore(tm_IDPHOTO_terry_free)
    manny:play_chore(ma_IDPHOTO_terry_free)
    virago:play_chore(nv_IDPHOTO_terry_free)
    terry:say_line("/p39tm06/")
    terry:wait_for_message()
    sleep_for(2000)
    start_sfx("beewing.imu")
    set_pan("beewing.imu", 64)
    fade_pan_sfx("beewing.imu", 1000, 0)
    fade_sfx("beewing.imu", 2000, 0)
    terry:wait_for_chore()
    manny:wait_for_chore()
    virago:wait_for_chore()
    terry:free()
    pc:current_setup(pc_4_idfoto)
    manny:play_chore(ma_IDPHOTO_nick_fold)
    virago:play_chore(nv_IDPHOTO_nick_fold)
    sleep_for(2000)
    virago:say_line("/p39vi07/")
    virago:wait_for_message()
    manny:wait_for_chore()
    pc:current_setup(pc_5_idfoto)
    manny:setpos(-0.0222798, -0.81329, 0)
    manny:play_chore(ma_IDPHOTO_almost)
    manny:say_line("/p39ma08/")
    manny:wait_for_message()
    manny:wait_for_chore()
    pc:current_setup(pc_6_idfoto)
    manny:set_softimage_pos(5.8562, 0, -1.9891)
    music_state:set_sequence(seqNickPunchout)
    music_state:set_state(stateNT)
    manny:play_chore(ma_IDPHOTO_manny_punch)
    virago:play_chore(nv_IDPHOTO_manny_punch)
    sleep_for(1500)
    manny:say_line("/p39ma11/")
    manny:wait_for_message()
    virago:say_line("/p39vi07b/")
    virago:wait_for_message()
    manny:wait_for_chore()
    pc:current_setup(pc_7_idfoto)
    manny:play_chore(ma_IDPHOTO_punch2)
    virago:say_line("/p39vi09/")
    manny:wait_for_chore()
    pc:current_setup(pc_8_idfoto)
    virago:wait_for_message()
    manny:play_chore(ma_IDPHOTO_manny_talk1)
    manny:say_line("/p39ma10a/")
    manny:wait_for_chore()
    manny:play_chore(ma_IDPHOTO_manny_talk2)
    manny:wait_for_message()
    virago:play_chore(nv_IDPHOTO_nick_up)
    manny:say_line("/p39ma10b/")
    manny:wait_for_message()
    virago:say_line("/p39vi09b/")
    virago:wait_for_message()
    manny:wait_for_chore()
    pc:current_setup(pc_9_idfoto)
    virago:set_visibility(FALSE)
    manny:play_chore(ma_IDPHOTO_nick_leave)
    virago:say_line("/p39vi09c/")
    virago:wait_for_message()
    pc:current_setup(pc_10_idfoto)
    virago:set_visibility(TRUE)
    virago:play_chore(nv_IDPHOTO_nick_leave2)
    manny:play_chore(ma_IDPHOTO_p39_end)
    virago:say_line("/p39vi09d/")
    virago:wait_for_chore()
    virago:play_chore(nv_IDPHOTO_nick_leave3)
    virago:wait_for_message()
    virago:wait_for_chore()
    END_CUT_SCENE()
    music_state:update()
    virago:free()
    terry:free()
    manny:pop_costume()
    manny:setpos(-2.19, 1.33, 11.8)
    manny:setrot(0, 180, 0)
    pc:current_setup(pc_estws)
    manny:follow_boxes()
end
cut_scene.getcard = function(arg1) -- line 543
    dh.suitcase:put_in_limbo()
    hh.showed_pass = TRUE
    hl.glottis_gambling = TRUE
    stop_script(cn.charlie_idles)
    START_CUT_SCENE()
    hh:switch_to_set()
    manny:put_in_set(hh)
    MakeSectorActive("hl_door_trigger", FALSE)
    MakeSectorActive("hl_box", FALSE)
    MakeSectorActive("getcard_box", TRUE)
    manny:ignore_boxes()
    manny:setpos(0, 0.9, 0)
    manny:setrot(0, 180, 0)
    charlie:put_in_set(hh)
    charlie:set_costume("ccharlie.cos")
    charlie:set_mumble_chore(ccharlie_mumble)
    charlie:set_talk_chore(1, ccharlie_no_talk)
    charlie:set_talk_chore(2, ccharlie_a)
    charlie:set_talk_chore(3, ccharlie_c)
    charlie:set_talk_chore(4, ccharlie_e)
    charlie:set_talk_chore(5, ccharlie_f)
    charlie:set_talk_chore(6, ccharlie_l)
    charlie:set_talk_chore(7, ccharlie_m)
    charlie:set_talk_chore(8, ccharlie_o)
    charlie:set_talk_chore(9, ccharlie_t)
    charlie:set_talk_chore(10, ccharlie_u)
    charlie:push_costume("cc_getcard.cos")
    charlie:ignore_boxes()
    charlie:setpos({ x = -0.336, y = -1.216, z = 0 })
    charlie:setrot(0, 1.0546, 0)
    manny:push_costume("mc_GETCARD.cos")
    SetActorFrustrumCull(manny.hActor, FALSE)
    SetActorFrustrumCull(charlie.hActor, FALSE)
    hh.hl_door:play_chore(0)
    manny:play_chore(mc_GETCARD_walk_out)
    sleep_for(7102)
    hh.hl_door:play_chore(1)
    manny:wait_for_chore(mc_GETCARD_walk_out, "mc_GETCARD.cos")
    music_state:set_state(stateHF)
    charlie:play_chore(cc_getcard_alright)
    manny:play_chore(mc_GETCARD_hands_up)
    sleep_for(1000)
    charlie:say_line("/gtccc01/")
    charlie:wait_for_message()
    charlie:wait_for_chore(cc_getcard_alright, "cc_getcard.cos")
    hh:current_setup(hh_gtc2)
    manny:setpos({ x = 0, y = 1.085, z = 0 })
    charlie:setpos({ x = -0.185, y = -1, z = 0 })
    charlie:play_chore(cc_getcard_case)
    sleep_for(1200)
    charlie:say_line("/gtccc02/")
    charlie:wait_for_message()
    manny:play_chore(mc_GETCARD_bargain_line)
    manny:say_line("/gtcma03/")
    manny:wait_for_chore(mc_GETCARD_bargain_line, "mc_GETCARD.cos")
    charlie:wait_for_chore(cc_getcard_case, "cc_getcard.cos")
    manny:wait_for_message()
    hh:current_setup(hh_gtc3)
    charlie:say_line("/gtccc04/")
    charlie:play_chore(cc_getcard_muscle)
    charlie:wait_for_chore(cc_getcard_muscle, "cc_getcard.cos")
    charlie:wait_for_message()
    hh:current_setup(hh_gtc4)
    manny:play_chore(mc_GETCARD_chuck)
    manny:say_line("/gtcma05/")
    manny:wait_for_chore(mc_GETCARD_chuck, "mc_GETCARD.cos")
    manny:wait_for_message()
    manny:play_chore(mc_GETCARD_goons)
    manny:say_line("/gtcma06/")
    manny:wait_for_chore(mc_GETCARD_goons, "mc_GETCARD.cos")
    manny:wait_for_message()
    hh:current_setup(hh_gtc5)
    charlie:play_chore(cc_getcard_goons)
    manny:play_chore(mc_GETCARD_hands_up2)
    charlie:say_line("/gtccc07/")
    manny:wait_for_chore(mc_GETCARD_hands_up2, "mc_GETCARD.cos")
    manny:play_chore(mc_GETCARD_boss)
    charlie:wait_for_message()
    manny:say_line("/gtcma08/")
    charlie:wait_for_chore(cc_getcard_goons, "cc_getcard.cos")
    manny:wait_for_chore(mc_GETCARD_boss, "mc_GETCARD.cos")
    manny:wait_for_message()
    manny:play_chore(mc_GETCARD_card)
    manny:say_line("/gtcma09/")
    manny:wait_for_message()
    manny:wait_for_chore(mc_GETCARD_card, "mc_GETCARD.cos")
    manny:play_chore(mc_GETCARD_get_card)
    sleep_for(134)
    charlie:play_chore(cc_getcard_give_card)
    sleep_for(700)
    charlie:say_line("/gtccc10/")
    charlie:wait_for_chore(cc_getcard_give_card, "cc_getcard.cos")
    charlie:set_visibility(FALSE)
    charlie:wait_for_message()
    charlie:set_visibility(TRUE)
    charlie:free()
    SetActorFrustrumCull(manny.hActor, TRUE)
    SetActorFrustrumCull(charlie.hActor, TRUE)
    manny:setpos({ x = 0, y = -0.138, z = 0 })
    manny:pop_costume()
    wait_for_message()
    manny:say_line("/gtcma11/")
    hh:current_setup(hh_estla)
    manny:wait_for_message()
    END_CUT_SCENE()
    music_state:update()
    MakeSectorActive("hl_door_trigger", TRUE)
    MakeSectorActive("hl_box", TRUE)
    hh.union_card:get()
    manny:follow_boxes()
end
cut_scene.byeruba = function(arg1) -- line 679
    stop_script(tb.track_announcer)
    stop_script(announcer_volume_setting)
    stop_script(tb.cat_race_simulator)
    stop_script(tb.pre_race_timer)
    stop_script(tb.cat_paws)
    stop_script(announcer_volume_setting)
    stop_script(cn.charlie_idles)
    cf.letters:free()
    hk.turkey_baster:free()
    si.dog_tags:free()
    ci.liqueur:free()
    sl.detector:free()
    hl.case:free()
    bi.book:free()
    ks.opener:free()
    cc.anchor_paper:free()
    cc.jacket:free()
    lx.lengua:free()
    si.photofinish:free()
    sl.key:free()
    tb.blackmail_photo:free()
    cn.ticket:free()
    cn.printer:free()
    cn.pass:free()
    dh.suitcase:free()
    hh.union_card:free()
    cutscene_menu:enable_cutscene("byeruba")
    set_override(cut_scene.skip_byeruba, cut_scene)
    START_CUT_SCENE()
    RunFullscreenMovie("byeruba.snm")
    NukeResources()
    GetSystemFonts()
    CheckForCD("vd.set", TRUE)
    kill_override()
    lz:switch_to_set()
    manny:put_in_set(lz)
    manny:setpos(3.46457, 6.075, 3.56)
    manny:setrot(0, -181.391, 0)
    break_here()
    END_CUT_SCENE()
end
cut_scene.skip_byeruba = function(arg1) -- line 730
    kill_override()
    StopMovie()
    NukeResources()
    GetSystemFonts()
    CheckForCD("vd.set", TRUE)
    lz:switch_to_set()
    manny:put_in_set(lz)
    manny:setpos(3.46457, 6.075, 3.56)
    manny:setrot(0, -181.391, 0)
    break_here()
end
BundleResource("olivia_idles.cos")
BundleResource("cafe_inv.cos")
BundleResource("cafe_inv.set")

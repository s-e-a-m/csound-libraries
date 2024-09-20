<Cabbage> bounds(0, 0, 0, 0)
    form caption("REVERBERATOR - PLAYER") size(1000, 460), pluginId("revp"), colour("40,40,40,255")
    
    ;Title
    label bounds(294, 10, 551, 41) channel("label10021") text("REVERBERATOR - PLAYER")
    
    ;LOAD FILE - RATEPLAY - PLAY/STOP
    filebutton bounds(10, 12, 100, 25), text("Open File", "Open File"),  channel("filename"), shape("ellipse")
    rslider bounds(220, 6, 70, 50), channel("ratePlay"), range(-2, 2, 1, 1, 0.001), text("RATE PLAY")
    checkbox   bounds(120, 11, 100, 25), channel("PlayStop"), text("Play/Stop"), , fontColour:0(255, 255, 255, 255)
    
    ;WAVEFORM
    soundfiler bounds(10, 310, 980, 142), channel("beg","len"), identChannel("filer1"), colour(0, 255, 255, 255), fontColour(160, 160, 160, 255)
    
    ;----------PAR - SEQ---------------------------------------------------------------------
    groupbox bounds(4, 74, 120, 200) channel("groupbox10005") text("PAR - SEQ")
    label bounds(14, 95, 80, 16) channel("label10009") text("PAR")
    combobox bounds(14, 110, 80, 20) channel("PAR") colour:0(147, 210, 0), corners(5), value(1) items("1","2","3","4","5","6","7","8","9","10")
    label bounds(14, 130, 80, 16) channel("label10010") text("SEQ")
    combobox bounds(14, 145, 80, 20) channel("SEQ") colour:0(147, 210, 0), corners(5), value(1) items("1","2","3","4","5","6","7","8","9","10")

    combobox bounds(10, 195, 110, 20) channel("PARSEQ_APF") colour:0(147, 210, 0), corners(5), value(1) items("PAR - APF ","SEQ - APF ")
    combobox bounds(10, 240, 110, 20) channel("PARSEQ_FDL") colour:0(147, 210, 0), corners(5), value(1) items("PAR - FDL ","SEQ - FDL ")
    
    nslider bounds(135, 100, 100, 40) channel("TimeAPF1") range(0, 48000, 347, 1, 1) text("Time APF 1")
    nslider bounds(135, 140, 100, 40) channel("TimeAPF2") range(0, 48000, 113, 1, 1) text("Time APF 2")
    nslider bounds(135, 180, 100, 40) channel("TimeAPF3") range(0, 48000, 37, 1, 1) text("Time APF 3")
    nslider bounds(135, 220, 100, 40) channel("TimeAPF4") range(0, 48000, 347, 1, 1) text("Time APF 4")
    nslider bounds(135, 260, 100, 40) channel("TimeAPF5") range(0, 48000, 113, 1, 1) text("Time APF 5")
    nslider bounds(235, 100, 100, 40) channel("TimeAPF6") range(0, 48000, 37, 1, 1) text("Time APF 6")
    nslider bounds(235, 140, 100, 40) channel("TimeAPF7") range(0, 48000, 347, 1, 1) text("Time APF 7")
    nslider bounds(235, 180, 100, 40) channel("TimeAPF8") range(0, 48000, 113, 1, 1) text("Time APF 8")
    nslider bounds(235, 220, 100, 40) channel("TimeAPF9") range(0, 48000, 37, 1, 1) text("Time APF 9")
    nslider bounds(235, 260, 100, 40) channel("TimeAPF10") range(0, 48000, 347, 1, 1) text("Time APF 10")
    
    nslider bounds(340, 100, 100, 40) channel("GainAPF1") range(0, 1, 0.7, 1, 0.01) text("Gain APF 1")
    nslider bounds(340, 140, 100, 40) channel("GainAPF2") range(0, 1, 0.7, 1, 0.01) text("Gain APF 2")
    nslider bounds(340, 180, 100, 40) channel("GainAPF3") range(0, 1, 0.7, 1, 0.01) text("Gain APF 3")
    nslider bounds(340, 220, 100, 40) channel("GainAPF4") range(0, 1, 0.7, 1, 0.01) text("Gain APF 4")
    nslider bounds(340, 260, 100, 40) channel("GainAPF5") range(0, 1, 0.7, 1, 0.01) text("Gain APF 5")
    nslider bounds(440, 100, 100, 40) channel("GainAPF6") range(0, 1, 0.7, 1, 0.01) text("Gain APF 6")
    nslider bounds(440, 140, 100, 40) channel("GainAPF7") range(0, 1, 0.7, 1, 0.01) text("Gain APF 7")
    nslider bounds(440, 180, 100, 40) channel("GainAPF8") range(0, 1, 0.7, 1, 0.01) text("Gain APF 8")
    nslider bounds(440, 220, 100, 40) channel("GainAPF9") range(0, 1, 0.7, 1, 0.01) text("Gain APF 9")
    nslider bounds(440, 260, 100, 40) channel("GainAPF10") range(0, 1, 0.7, 1, 0.01) text("Gain APF 10")
    
    nslider bounds(550, 100, 100, 40) channel("TimeFDL1") range(0, 48000, 1687, 1, 1) text("Time FDL 1")
    nslider bounds(550, 140, 100, 40) channel("TimeFDL2") range(0, 48000, 1601, 1, 1) text("Time FDL 2")
    nslider bounds(550, 180, 100, 40) channel("TimeFDL3") range(0, 48000, 2053, 1, 1) text("Time FDL 3")
    nslider bounds(550, 220, 100, 40) channel("TimeFDL4") range(0, 48000, 2251, 1, 1) text("Time FDL 4")
    nslider bounds(550, 260, 100, 40) channel("TimeFDL5") range(0, 48000, 1687, 1, 1) text("Time FDL 5")
    nslider bounds(650, 100, 100, 40) channel("TimeFDL6") range(0, 48000, 1601, 1, 1) text("Time FDL 6")
    nslider bounds(650, 140, 100, 40) channel("TimeFDL7") range(0, 48000, 2053, 1, 1) text("Time FDL 7")
    nslider bounds(650, 180, 100, 40) channel("TimeFDL8") range(0, 48000, 2251, 1, 1) text("Time FDL 8")
    nslider bounds(650, 220, 100, 40) channel("TimeFDL9") range(0, 48000, 1687, 1, 1) text("Time FDL 9")
    nslider bounds(650, 260, 100, 40) channel("TimeFDL10") range(0, 48000, 1601, 1, 1) text("Time FDL 10")
    
    nslider bounds(755, 100, 100, 40) channel("GainFDL1") range(0, 1, 0.773, 1, 0.01) text("Gain FDL 1")
    nslider bounds(755, 140, 100, 40) channel("GainFDL2") range(0, 1, 0.802, 1, 0.01) text("Gain FDL 2")
    nslider bounds(755, 180, 100, 40) channel("GainFDL3") range(0, 1, 0.753, 1, 0.01) text("Gain FDL 3")
    nslider bounds(755, 220, 100, 40) channel("GainFDL4") range(0, 1, 0.733, 1, 0.01) text("Gain FDL 4")
    nslider bounds(755, 260, 100, 40) channel("GainFDL5") range(0, 1, 0.773, 1, 0.01) text("Gain FDL 5")
    nslider bounds(855, 100, 100, 40) channel("GainFDL6") range(0, 1, 0.802, 1, 0.01) text("Gain FDL 6")
    nslider bounds(855, 140, 100, 40) channel("GainFDL7") range(0, 1, 0.753, 1, 0.01) text("Gain FDL 7")
    nslider bounds(855, 180, 100, 40) channel("GainFDL8") range(0, 1, 0.733, 1, 0.01) text("Gain FDL 8")
    nslider bounds(855, 220, 100, 40) channel("GainFDL9") range(0, 1, 0.773, 1, 0.01) text("Gain FDL 9")
    nslider bounds(855, 260, 100, 40) channel("GainFDL10") range(0, 1, 0.802, 1, 0.01) text("Gain FDL 10")
    ;--------------------------------------------------------------------------------------
    
    ;------General-------------------------------------------------------------
    button bounds(430, 56, 80, 40) channel("randTimeGain") text("RAND")
    button bounds(530, 56, 100, 40) channel("SetArray") text("Set TimeGain")
    
    rslider bounds(848, 10, 60, 60) channel("Dry") range(0, 1, 0, 1, 0.001) text("Dry")
    rslider bounds(910, 10, 60, 60) channel("Wet") range(0, 1, 0.1, 1, 0.001) text("Wet")
    ;--------------------------------------------------------------------------
    
</Cabbage>

<CsoundSynthesizer>

    <CsOptions>
        -n -d -+rtmidi=NULL -M0 -m0d
    </CsOptions>

    <CsInstruments>
    ksmps = 32
    nchnls = 4
    0dbfs = 1
    
    ;UDO FILE
    #include "LoadPlayUDO.csd"
    #include "SchroederUDO.csd"

    gSfilepath init ""
    
    instr 1
        ;CONTROLS   
        #include "Controls.csd"

        ;call instr 99 load file
        prints gSfilepath
        if changed:k(gSfilepath)==1 then       
        event "i",99,0,0
        endif 

        ;PLAY/OFF
        ktrig2    trigger    gkPlayStop,0.5,0 
        schedkwhen    ktrig2,0,0,2,0,-1 
        
        #include "SetControls.csd"          
    endin
    
    instr 99;LOAD FILE 
        ;UDO LoadFile
        giphasfreq, gitableL, gitableR LoadFile gSfilepath
    endin
  
    instr 2
        
        ;-----Instr 2 Stop------------------
        if gkPlayStop==0 then 
        turnoff
        endif
        ;-----------------------------------
        
        ;-----------PLAYER------------------
        kStart = gkBeg / ftlen(gitableL)
        
        aL, aR, ares PLAYER gitableL, gitableR, giphasfreq, gkRatePlay, kStart
   
        outs aL * gkDry, aR * gkDry
        ;-----------------------------------
              
        ;---------POSITION WAVEFORM----------------------------------------
        Smessage sprintfk "scrubberPosition(%d)", k(ares) * ftlen(gitableL)
        chnset Smessage, "filer1"
        ;------------------------------------------------------------------
       
        ;----------CHANGE CONTROLS - PAR SEQ REVERBERATORS  ---------------------
        if changed(gkPAR, gkSEQ, gkPARSEQ_APF, gkPARSEQ_FDL, gkSetArray) = 1 then
        reinit RESTART
        endif
        
        RESTART:
              
        iTimeAPF[] fillarray i(gkT_APF1), i(gkT_APF2), i(gkT_APF3), i(gkT_APF4), i(gkT_APF5), i(gkT_APF6), i(gkT_APF7), i(gkT_APF8), i(gkT_APF9), i(gkT_APF10)
        iGainAPF[] fillarray i(gkG_APF1), i(gkG_APF2), i(gkG_APF3), i(gkG_APF4), i(gkG_APF5), i(gkG_APF6), i(gkG_APF7), i(gkG_APF8), i(gkG_APF9), i(gkG_APF10)
        iTimeFDL[] fillarray i(gkT_FDL1), i(gkT_FDL2), i(gkT_FDL3), i(gkT_FDL4), i(gkT_FDL5), i(gkT_FDL6), i(gkT_FDL7), i(gkT_FDL8), i(gkT_FDL9), i(gkT_FDL10)        
        iGainFDL[] fillarray i(gkG_FDL1), i(gkG_FDL2), i(gkG_FDL3), i(gkG_FDL4), i(gkG_FDL5), i(gkG_FDL6), i(gkG_FDL7), i(gkG_FDL8), i(gkG_FDL9), i(gkG_FDL10)

        iSR = sr
        
        iN_SEQ = i(gkSEQ)
        iN_PAR = i(gkPAR)
        iOffSetTime = 100
        icnt = 0
        icntFDL = 0

        iPARSEQ_APF = i(gkPARSEQ_APF) - 1
        iPARSEQ_FDL = i(gkPARSEQ_FDL) - 1
        
        aAPF_SEQ_L = SEQ_APF_SCH(aL, iTimeAPF+iOffSetTime, iGainAPF, iSR, iN_SEQ, icnt)  
        aAPF_SEQ_R = SEQ_APF_SCH(aR, iTimeAPF+iOffSetTime, iGainAPF, iSR, iN_SEQ, icnt)
        aAPF_PAR_L = PAR_APF_SCH(aL, iTimeAPF+iOffSetTime, iGainAPF, iSR, iN_PAR, icnt) / iN_PAR
        aAPF_PAR_R = PAR_APF_SCH(aR, iTimeAPF+iOffSetTime, iGainAPF, iSR, iN_PAR, icnt) / iN_PAR
        
        aAPFL = aAPF_SEQ_L * iPARSEQ_APF + aAPF_PAR_L * (1 - iPARSEQ_APF)
        aAPFR = aAPF_SEQ_R * iPARSEQ_APF + aAPF_PAR_R * (1 - iPARSEQ_APF)
        
        aFDL_SEQ_L = SEQ_FDL_SCH(aAPFL, iTimeFDL+iOffSetTime, iGainFDL, iSR, iN_SEQ, icntFDL)
        aFDL_SEQ_R = SEQ_FDL_SCH(aAPFR, iTimeFDL+iOffSetTime, iGainFDL, iSR, iN_SEQ, icntFDL)
        aFDL_PAR_L = PAR_FDL_SCH(aAPFL, iTimeFDL+iOffSetTime, iGainFDL, iSR, iN_PAR, icntFDL) / iN_PAR
        aFDL_PAR_R = PAR_FDL_SCH(aAPFR, iTimeFDL+iOffSetTime, iGainFDL, iSR, iN_PAR, icntFDL) / iN_PAR
        
        aReverberatorL = (aFDL_SEQ_L* iPARSEQ_FDL + aFDL_PAR_L * (1 - iPARSEQ_FDL))
        aReverberatorR = (aFDL_SEQ_R* iPARSEQ_FDL + aFDL_PAR_R * (1 - iPARSEQ_FDL))

        outs aReverberatorL * (gkWet), aReverberatorR * (gkWet)
        ;-------------------------------------------------------------------------
    
    endin  

    </CsInstruments>

    <CsScore>
        f0 z
        i1 0 -1
    </CsScore>

</CsoundSynthesizer>

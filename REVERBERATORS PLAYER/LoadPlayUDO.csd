;--------------LOAD FILE-------------------------
opcode LoadFile, iii, S

    gSfilepath xin

    ;N CHANNELS
    gichans    filenchnls    gSfilepath           
    cabbageSetValue "nch", gichans
 
    ;WRITE TO EMPTY TABLE
    gitableL    ftgen    1,0,0,1,gSfilepath,0,0,1
    gitableR    ftgen    2,0,0,1,gSfilepath,0,0,2
  
    ;RATE PHASOR
    iphasfreq = sr / (ftlen(gitableL))
 
    ;DRAW WAVEFORM
    Smessage sprintfk "file(%s)", gSfilepath
    chnset Smessage, "filer1"  
  
    xout  iphasfreq, gitableL, gitableR

endop
;--------------LOAD FILE-------------------------


;--------------PLAYER-------------------------
opcode PLAYER, aaa, iiikk

itableL, itableR, iphasfreq, kRatePlay, kStart xin

        if changed(kStart)= 1 then
        reinit REPLAY
        endif
         
        REPLAY:
        ares phasor iphasfreq * kRatePlay, i(kStart)  
               
        aOutL table ares, itableL, 1 
        aOutR table ares, itableR, 1

    xout  aOutL, aOutR, ares

endop
;--------------PLAYER-------------------------


        if changed(gkTimeGain) = 1 then
        reinit SETCONTROLS
        endif
        
        SETCONTROLS:;restart par-seq reverberators

;TIME - GAIN
        iTime = sr/8
        cabbageSetValue "TimeAPF1", rnd(iTime)
        cabbageSetValue "TimeAPF2", rnd(iTime)
        cabbageSetValue "TimeAPF3", rnd(iTime)
        cabbageSetValue "TimeAPF4", rnd(iTime)
        cabbageSetValue "TimeAPF5", rnd(iTime)
        cabbageSetValue "TimeAPF6", rnd(iTime)
        cabbageSetValue "TimeAPF7", rnd(iTime)
        cabbageSetValue "TimeAPF8", rnd(iTime)
        cabbageSetValue "TimeAPF9", rnd(iTime)
        cabbageSetValue "TimeAPF10", rnd(iTime)
        
        cabbageSetValue "GainAPF1",rnd(0.9)
        cabbageSetValue "GainAPF2",rnd(0.9)
        cabbageSetValue "GainAPF3",rnd(0.9)
        cabbageSetValue "GainAPF4",rnd(0.9)
        cabbageSetValue "GainAPF5",rnd(0.9)
        cabbageSetValue "GainAPF6",rnd(0.9)
        cabbageSetValue "GainAPF7",rnd(0.9)
        cabbageSetValue "GainAPF8",rnd(0.9)
        cabbageSetValue "GainAPF9",rnd(0.9)
        cabbageSetValue "GainAPF10",rnd(0.9)
              
        cabbageSetValue "TimeFDL1", rnd(iTime)
        cabbageSetValue "TimeFDL2", rnd(iTime)
        cabbageSetValue "TimeFDL3", rnd(iTime)
        cabbageSetValue "TimeFDL4", rnd(iTime)
        cabbageSetValue "TimeFDL5", rnd(iTime)
        cabbageSetValue "TimeFDL6", rnd(iTime)
        cabbageSetValue "TimeFDL7", rnd(iTime)
        cabbageSetValue "TimeFDL8", rnd(iTime)
        cabbageSetValue "TimeFDL9", rnd(iTime)
        cabbageSetValue "TimeFDL10", rnd(iTime)
        
        
        cabbageSetValue "GainFDL1",rnd(0.9)
        cabbageSetValue "GainFDL2",rnd(0.9)
        cabbageSetValue "GainFDL3",rnd(0.9)
        cabbageSetValue "GainFDL4",rnd(0.9)
        cabbageSetValue "GainFDL5",rnd(0.9)
        cabbageSetValue "GainFDL6",rnd(0.9)
        cabbageSetValue "GainFDL7",rnd(0.9)
        cabbageSetValue "GainFDL8",rnd(0.9)
        cabbageSetValue "GainFDL9",rnd(0.9)
        cabbageSetValue "GainFDL10",rnd(0.9)
        
;--- FDL - APF UDOs ------------------------------------------------------------
;--- FDL -----------------------------------------------------------------------
opcode FDL_SCH, a,aiii
	aPulse, iT, iG, iSR xin
		abuf2	delayr	(iT/iSR)
		aDel 	deltap  0
				delayw	aPulse + aDel * iG
	xout aDel
endop
;-------------------------------------------------------------------------------
;--- FDLV - fdl vdelay ---------------------------------------------------------
opcode FDLV_SCH, a,aiii
	aPulse, iT, iG, iSR xin
		aFB init 0
        aFDLV vdelay aPulse + aFB, iT / iSR, 1000
        aFB = aFDLV * iG
	xout aFDLV
endop
;-------------------------------------------------------------------------------
;--- APF -----------------------------------------------------------------------
opcode APF_SCH, a,aiii
	aPulse , iT, iG, iSR xin
		aPulseAllPass = aPulse * -iG
        aComb FDL_SCH aPulse, iT, iG, iSR
        aPulseAllPassComb = aComb * (1 - (iG * iG))
        aAllPass = aPulseAllPass + aPulseAllPassComb
	xout aAllPass
endop
;-------------------------------------------------------------------------------
;--- FDLA ----------------------------------------------------------------------
opcode FDLA_SCH, a,aiii
	aPulse, iT, iG, iSR xin
            iT = 4000
            iG = 1
		aAPF APF_SCH aPulse, iT, iG, iSR
        abuf2	delayr	(iT/iSR)
        aFDLA 	deltap  0
                delayw	aPulse + aFDLA * iG - aAPF
	xout aFDLA
endop
;-------------------------------------------------------------------------------
;--- APFL ----------------------------------------------------------------------
opcode APFL_SCH, a,aaiii
	aPulse, aComb, iT, iG, iSR xin
		aPulseAllPass = aPulse * -iG
		aFDLA FDLA_SCH aPulse, iT, iG, iSR
		aPulseAllPassComb = aFDLA * (1 - (iG * iG))
		aAPFL = aPulseAllPass + aPulseAllPassComb
	xout aAPFL
endop
;-------------------------------------------------------------------------------
;--- ADAPT ---------------------------------------------------------------------
opcode ADAPT_SCH, i,i
	iVal xin
        iSR = sr;sample rate
        ischroederSR = 25000;sample rate John Chowning - Schroeder
        iADAPT = iVal * (iSR / ischroederSR);
    xout iADAPT
endop
;--- FDL - APF END -------------------------------------------------------------
;-------------------------------------------------------------------------------
;--- SEQ - PAR UDOs ------------------------------------------------------------
;--- SEQ FDL -------------------------------------------------------------------
opcode SEQ_FDL_SCH, a, ai[]i[]iii
    aPulse, iTfdl[], iGfdl[], iSR, iN, icnt  xin
		icnt  =  icnt + 1
		aFDL = FDL_SCH(aPulse, iTfdl[icnt - 1], iGfdl[icnt - 1], iSR)
        if icnt < iN then
        	aFDL SEQ_FDL_SCH aFDL, iTfdl, iGfdl, iSR, iN, icnt
		endif
	xout aFDL
endop
;-------------------------------------------------------------------------------
;--- PAR FDL -------------------------------------------------------------------
opcode PAR_FDL_SCH, a, ai[]i[]iii
	aPulse, iTfdl[], iGfdl[], iSR, iN, icnt  xin
		icnt  =  icnt + 1
		aFDL = FDL_SCH(aPulse, iTfdl[icnt - 1], iGfdl[icnt - 1], iSR)
		aMix init 0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if icnt < iN then
        	aMix PAR_FDL_SCH aPulse, iTfdl, iGfdl, iSR, iN, icnt
		endif
	xout aMix + aFDL
endop
;-------------------------------------------------------------------------------
;--- SEQ APF -------------------------------------------------------------------
opcode SEQ_APF_SCH, a, ai[]i[]iii
	aPulse, iTapf[], iGapf[], iSR, iN, icnt  xin
		icnt  =  icnt + 1
        aAPF = APF_SCH(aPulse , iTapf[icnt - 1], iGapf[icnt - 1], iSR)
        if icnt < iN then
        	aAPF SEQ_APF_SCH aAPF, iTapf, iGapf, iSR, iN, icnt
        endif
    xout aAPF
endop
;-------------------------------------------------------------------------------
;--- PAR APF -------------------------------------------------------------------
opcode PAR_APF_SCH, a, ai[]i[]iii
    aPulse, iTapf[], iGapf[], iSR, iN, icnt  xin
		icnt  =  icnt + 1
        aAPF = APF_SCH(aPulse , iTapf[icnt - 1], iGapf[icnt - 1], iSR)
        aMix init 0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if icnt < iN then
        	aMix PAR_APF_SCH aPulse, iTapf, iGapf, iSR, iN, icnt
        endif
    xout aAPF + aMix
endop
;-------------------------------------------------------------------------------
;--- SEQ - PAR END -------------------------------------------------------------

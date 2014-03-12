PROGRAM_NAME='JCUP DIV 3'
(***********************************************************)
(***********************************************************)
(*  FILE_LAST_MODIFIED_ON: 04/05/2006  AT: 09:00:25        *)
(***********************************************************)
(* System Type : NetLinx                                   *)
(***********************************************************)
(* REV HISTORY:                                            *)
(***********************************************************)
(*
    $History: $
*)
(***********************************************************)
(*          DEVICE NUMBER DEFINITIONS GO BELOW *)
(***********************************************************)
DEFINE_DEVICE
dvVol					= 5001:1:31	//NI700 Port 1
dvBoeckeler		= 5001:2:31			//NI 700 port 2
dvResetIO			= 5001:4:31			//NI-700 IO to reset Enova
dvKeypad_3		= 85:1:31		//Keypad at Judges Bench
dvMatrix 				= 5002:2:3		//Built in Enova DGX 
dvTP_3  				= 10001:1:3		//iPad
vdvTP_3 			= 33001:1:3		//Virtual for TP
dvTable1_1_3 	= 12001:1:3	//Multi In Box @Law Table 1
dvTable1_2_3 	= 12002:1:3	//Multi In Box @Law Table 1
dvTable2_1_3 	= 12003:1:3	//Multi In Box @Law Table 2
dvTable2_2_3 	= 12004:1:3	//Multi In Box @Law Table 2
dvTable3_1_3 	= 12005:1:3	//Multi In Box @Law Table 3
dvTable3_2_3 	= 12006:1:3	//Multi In Box @Law Table 3
dvWall_Left_3 	= 12007:1:3//Wall Input plate on left site facing Judge
dvWall_Right_3 	= 12008:1:3//Wall Input plate on Right site facing Judge
dvDocCam_3	   	= 12009:1:3//Doc Cam input
dvWall_Center_3	=	12010:1:3
dvTable4_1_3 	= 12011:1:3//Multi Box at table 4kl
dvTable4_2_3 	= 12012:1:3

dvProj1_3				= 13002:1:3	//Projector Panasonic
dvProj2_3				= 13003:1:3	//Projector 2 Panasonic
dvWitnessMon_3	= 13004:1:3	//Planar Touch interface to Boeckler at witness stand
dvTable1Mon_3		= 13005:1:3//Planar at Law table 1
dvTable2Mon_3		= 13006:1:3//Planar at Law table 2
dvCartMon_3			= 13007:1:3//LCD Cart For Jury
dvTable3Mon_3		= 13008:1:3//Law Table 3 aka traveling table Boeckeler
dvTable4Mon_3		= 13009:1:3
(***********************************************************************************************)
//									This is the added on Division.
//These are physically connected to System 3 but controlled from System 2
dvTable1_1_2 	= 14001:1:3	//Multi In Box @Law Table 1
dvTable1_2_2 	= 14002:1:3	//Multi In Box @Law Table 1
dvTable2_1_2 	= 14003:1:3	//Multi In Box @Law Table 2
dvTable2_2_2 	= 14004:1:3	//Multi In Box @Law Table 2
dvTable3_1_2 	= 14005:1:3	//Multi In Box @Law Table 3
dvTable3_2_2 	= 14006:1:3	//Multi In Box @Law Table 3
dvWall_Left_2 	= 14007:1:3//Wall Input plate on left site facing Judge
dvWall_Right_2 	= 14008:1:3//Wall Input plate on Right site facing Judge
dvDocCam_2	   	= 14009:1:3//Doc Cam input
dvWall_Center_2	=	14010:1:3
dvTable4_1_2 	= 14011:1:3//Multi Box at table 4kl
dvTable4_2_2 	= 14012:1:3

dvProj1_2				= 15002:1:3	//Projector Panasonic
dvProj2_2				= 15003:1:3	//Projector 2 Panasonic
dvWitnessMon_2	= 15004:1:3	//Planar Touch interface to Boeckler at witness stand
dvTable1Mon_2		= 15005:1:3//Planar at Law table 1
dvTable2Mon_2		= 15006:1:3//Planar at Law table 2
dvCartMon_2			= 15007:1:3//LCD Cart For Jury
dvTable3Mon_2		= 15008:1:3//Law Table 3 aka traveling table Boeckeler
dvTable4Mon_2		= 15009:1:3
(************************************************************************************************)

//105816AP22D0001
(***********************************************************)
(*               CONSTANT DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_CONSTANT
dev dvProjs[] = {dvProj1_3,dvProj2_3}
dev dvBoxes[] = {dvTable1_1_3, 	
                         dvTable1_2_3,	
                         dvTable2_1_3, 	
                         dvTable2_2_3, 	
                         dvTable3_1_3, 	
                         dvTable3_2_3, 	
                         dvWall_Left_3, 	
                         dvWall_Right_3, 
                         dvDocCam_3
}
integer nUpperLt			= 1
integer nBaseLT			= 2
integer nLightOff			= 3
integer nIrisClose			= 4
integer nZoomIn			= 5
integer nFocusIn			= 6
integer nIrisOpen			= 7
integer nZoomOut			= 8
integer nFocusOut		= 9
integer nRotate				= 10
integer nPositive			= 11
integer nNegative			= 12
integer nDocCamON	= 13
integer nDocCamOFF	= 14

integer nPowerOn 		= 1
integer nPowerOff 		= 2		
integer nHDMIIn			= 3
integer nDVID				=	4		
integer nDisplayMuteOn = 5             
integer nDisplayMuteOFF = 6             
		 
integer nTypeHDMI 	= 1
integer nTypeVGA 	= 2              

//591000AP18d00055
integer nTable1_VGA 	= 1
integer nTable1_HDMI 	= 2
integer nTable2_VGA 	= 3
integer nTable2_HDMI	= 4
integer nTable3_VGA 	= 5
integer nTable3_HDMI 	= 6
integer nWall_L				= 7
integer nWall_R			= 8
integer nDocCam 		= 9
integer nBoecklerIn		= 21 //13 in div 11

integer nToTable3 		= 1
integer nToProj1			= 2
integer nToProj2			= 3
integer nToWitness		= 4
integer nToTable1			= 5
integer nToTable2			= 6
integer nToTable4			= 7
integer nToJuryLCD		= 8
integer nToRecord_1	= 9
integer nToBoeckeler	= 10
integer nAudioToSpkrs = 11
integer nAudioToJAVS = 12
integer nSystem_11 	= 11
(*
integer nSystem_8 	= 8
integer nSystem_9 	= 9
*)
integer nBtnSrcs[] = {10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,91,92,94,95,96,97,98,99}
integer nBtnDest[] = {31,32,33,34,35,36,37,38,39,40}
integer nBtnProjPwr[] = {41,42,43,44,46,47}
integer nBtnShutDown = 48
integer nBtnStartup= 49
integer nBtnVol[] = {50,51,52}
integer nBtnAudioLock = 53
integer nBtnAnnotate1 = 54	//Screen 1
integer nBtnAnnotate2 = 55	//Screen 2
integer nBtnAnnotate3 = 83	//Cart
integer nBtnRecord_1[] = {56,57,58,59,60,61}
integer nBtnDocCam[] = {71,72,73,74,75,76,77,78,79,80,81,82}
integer nBtnScreenLock = 84
INTEGER nBtnPowers[] = {86,87,88,89,90}
integer nBtnTurnOn[] = {93}
(***********************************************************)
(*              DATA TYPE DEFINITIONS GO BELOW       *)
(***********************************************************)
DEFINE_TYPE

(***********************************************************)
(*               VARIABLE DEFINITIONS GO BELOW        *)
(***********************************************************)
DEFINE_VARIABLE
integer nSrcTemp_3
integer nCurrSrc_3
integer nCurrDest_3
integer nCurrSrc_9
integer nCurrDest_9
char cCurrColor_3[10]
char cSrcText_3[20][20]
cCurrText_3[20]
integer nCurrVideoType
integer nCurrBox
char cSrcTxt_1[25]
integer nAudioLock
integer nProj_3_1_Src_3
integer nProj_3_2_Src_3
integer nProj_3_3_Src_3//Cart
integer nOldProj1Src_3
integer nOldProj2Src_3
integer nOldProj3Src_3//Cart


char cCurrColor_9[6]
char cSrcText_9[20][20]
cCurrText_9[20]
integer nVolVal
integer nMute
char cDocStr[10]
integer nRecord_1_1
integer nRecord_2_1
integer nRecord_3_1
integer nRecord_4_1
integer nAnnotate_1_1
integer nAnnotate_2_1
integer nAnnotate_3_1
integer nAnnotate_4_1
integer nScreensLocked
char cOut[32][20]
INTEGER nIdx
INTEGER NLOOP
INTEGER nDisplayStatus
INTEGER nWitnessStatus
INTEGER trash1
char trash2[12]
integer nReview
integer nPowerStatus[3]
(***********************************************************)
(*               LATCHING DEFINITIONS GO BELOW    *)
(***********************************************************)
DEFINE_LATCHING

(***********************************************************)
(*       MUTUALLY EXCLUSIVE DEFINITIONS GO BELOW           *)
(***********************************************************)
DEFINE_MUTUALLY_EXCLUSIVE

(***********************************************************)
(*        SUBROUTINE/FUNCTION DEFINITIONS GO BELOW         *)
(***********************************************************)
(* EXAMPLE: DEFINE_FUNCTION <RETURN_TYPE> <NAME> (<PARAMETERS>) *)
(* EXAMPLE: DEFINE_CALL '<NAME>' (<PARAMETERS>) *)
DEFINE_CALL 'Print'
{
	SEND_STRING dvBoeckeler,"$1B,'(CPP'"
}
DEFINE_CALL 'Shutdown'
{
	Send_command vdvTP_3,"'^TXT-' ,itoa(32),',0, '"
	Send_command vdvTP_3,"'^TXT-' ,itoa(33),',0, '"
	Send_command vdvTP_3,"'^TXT-' ,itoa(38),',0, '"
	send_command vdvTP_3,"'^BCB-32,0,87'" 
	send_command vdvTP_3,"'^BCB-33,0,87'" 
	send_command vdvTP_3,"'^BCB-38,0,87'" 
	nAnnotate_1_1 = 0
	nAnnotate_2_1 = 0
	nAnnotate_3_1 = 0
	nScreensLocked = 1
	Call 'Proj_1'(nPowerOff,1)
	Call 'Proj_1'(nPowerOff,2)
	SEND_COMMAND dvMatrix,"'DO1,2,3,4,5,6,7,8,9,10,11T'"
	Call	'Doc Cam'(nDocCamOFF)
	Call 'LG TV'(nPowerOff)
	SEND_COMMAND dvTP_3,"'Page-Welcome'"
	SEND_COMMAND dvMatrix,"'DO11T'"//Stop Audio from playing when shut down.
}
DEFINE_CALL 'Proj_1'(integer nProjCmd ,nProj)
{
	SWITCH(nProjCmd)
	{
		Case nPowerOn:
		{
			SEND_STRING dvProjs[nProj],"$02,'ADZZ;PON',$03"
			nPowerStatus[nProj] = 1
		}
		Case nPowerOff:
		{
			SEND_STRING dvProjs[nProj],"$02,'ADZZ;POF',$03"
			nPowerStatus[nProj] = 0
		}
		Case nHDMIIn:
		{
			SEND_STRING dvProjs[nProj],"$02,'ADZZ;IIS:HD1',$03"
		}
        case nDisplayMuteOn:
        {
            SEND_STRING dvProjs[nProj],"$02,'ADZZ;OSH:1',$03"
        }
        case nDisplayMuteOFF:
        {
            SEND_STRING dvProjs[nProj],"$02,'ADZZ;OSH:0',$03"
        }

	}
}
DEFINE_CALL 'Set VGA'(dev dv_Box)
{
    send_string 0:1:0,"'set vga called',13,10"
    SEND_COMMAND dv_Box,"'VI8O6'"
}
DEFINE_CALL 'Set HDMI'(dev dv_Box)
{
    send_string 0:1:0,"'set HDMI called',13,10"
    SEND_COMMAND dv_Box,"'VI7O6'"
}
DEFINE_CALL 'Matrix'(integer nIn, integer nOut)
{
	SEND_STRING 0:1:0,"'Switched input - ',itoa(nIn),' to OUTPUT - ',itoa(nOUT),13,10"
	If((nScreensLocked = 1) && (nIn != nBoecklerIn))
	{
		SEND_STRING 0:1:0,"'NIN 2 = ',itoa(nIn),13,10"
		nProj_3_1_Src_3 = nin
		nProj_3_2_Src_3 = nin
		nProj_3_3_Src_3 = nin
		SEND_COMMAND dvMatrix,"'CI',ITOA(nIn),'O1:9T'"
		SEND_COMMAND dvMatrix,"'CI',ITOA(nIn),'O',ITOA(nOut),'T'"
	}
	Else
		SEND_COMMAND dvMatrix,"'CI',ITOA(nIn),'O',ITOA(nOut),'T'"
	
	If(nOut <> nToBoeckeler)
	{
		SEND_STRING 0:1:0,"'NIN 3 = ',itoa(nIn),13,10"
		SWITCH(nOut)
		{
			Case nToProj1:
			{
				If(nIn <> nBoecklerIn)
					nProj_3_1_Src_3 = nIn
			}
			Case nToProj2:
			{
				SEND_STRING 0:1:0,"'NIN 4 = ',itoa(nIn),13,10"
				If(nIn <> nBoecklerIn)
					nPROJ_3_2_SRC_3 = nIn
			}
			Case nToJuryLCD:
			{
				If(nIn <> nBoecklerIn)
					nPROJ_3_3_SRC_3 = nIn
			}
		}
	}
}
DEFINE_CALL 'Set Color'(integer nsrc, integer nDest, integer nSys)
{
	If(nsrc < 3)//Table 1
	{
		cCurrColor_3 = 'Yellow'
	}
	If((nsrc > 2) &&(nsrc < 5))//Table 2
	{
		cCurrColor_3 = 'Orange'
	}
	If((nsrc > 4) &&(nsrc < 7))//Table 3
	{
		cCurrColor_3 = 'Green'
	}
	If(nsrc = 9)
	{
		cCurrColor_3 = 'Yellow'
	}
	If(nsrc = 10)
	{
		cCurrColor_3 = 'Orange'
	}
	If(nsrc = 11)
	{
		cCurrColor_3 = 'Magenta'
	}
	If((nsrc > 6) &&(nsrc < 9))//Table 4
	{
		cCurrColor_3 = 'Blue'
	}
	If(nSys = 1)
	{
		SEND_COMMAND vdvTP_3,"'^BCT-',itoa(nDest),',0,',cCurrColor_3"
		SEND_COMMAND vdvTP_3,"'^BCB-',itoa(nDest),',0,',cCurrColor_3"
	}
}
DEFINE_CALL 'Doc Cam'(integer nDCCmd)
{
	SWITCH(nDCCmd)
	{
		Case nUpperLt:
		{
			cDocStr = "$5A,$00,$C0,$FD"
		}
		Case nBaseLT:
		{
			cDocStr = "$5A,$00,$C2,$FD"
		}
		Case nLightOff:
		{
			cDocStr = "$5A,$00,$C4,$FD"
		}
		Case nIrisClose:
		{
			//cDocStr = "$5A,$00,$C4,$FD"
		}
		Case nZoomIn:
		{
			cDocStr = "$5A,$00,$30,$FD"
		}
		Case nFocusIn:
		{
			cDocStr = "$5A,$00,$44,$FD"
		}
		Case nIrisOpen:
		{
			//cDocStr = "$5A,$00,$C4,$FD"
		}
		Case nZoomOut:
		{
			cDocStr = "$5A,$00,$31,$FD"
		}
		Case nFocusOut:
		{
			cDocStr = "$5A,$00,$45,$FD"
		}
		Case nRotate:
		{
			cDocStr = "$5A,$00,$66,$FD"
		}
		Case nPositive:
		{
			cDocStr = "$5A,$00,$4B,$FD"
		}
		Case nNegative:
		{
			cDocStr = "$5A,$00,$4C,$FD"
		}
		Case nDocCamON:
		{
			cDocStr = "$5A,$00,$DE,$FD"
		}
		Case nDocCamOff:
		{
			cDocStr = "$5A,$00,$DF,$FD"
		}
	}
	SEND_STRING dvDocCam_3,"cDocStr"
}
DEFINE_CALL 'LG TV'(integer nTVCmd)
{
    Switch(nTVCmd)
    {
	Case nPowerOn:
	{	
	    send_string dvCartMon_3,"'ka 0 01',13"
		nPowerStatus[3] = 1
	}
	Case nPowerOff:
	{
	    send_string dvCartMon_3,"'ka 0 00',13"
		nPowerStatus[3] = 0
	}
	Case nHDMIIn:
	{
	    send_string dvCartMon_3,"'xb 0 90',13"
	}
	Case nDVID:
	{
	    send_string dvCartMon_3,"'xb 0 70',13"
	}
	    case nDisplayMuteOn:
    {
		send_string dvCartMon_3,"'kd 0 1',13"
    }
		case nDisplayMuteOFF:
    {
        send_string dvCartMon_3,"'kd 0 0',13"
    }

	(*
	Case nChanUp:
	{
	    send_string dvPreview,"'mc 0 00',13"
	}
	Case nChanDn:
	{
	    send_string dvPreview,"'mc 0 01',13"
	}
	Case nVolUp:
	{
	    send_string dvPreview,"'mc 0 02',13"
	}
	Case nVolDn:
	{
	    send_string dvPreview,"'mc 0 03',13"
	}
	Case nVolMute:
	{
	    send_string dvPreview,"'mc 0 09',13"
	}*)
    }
}
DEFINE_CALL 'UnAnnotate 1'
{
	Call 'Matrix'(nOldProj1SRC_3, nToProj1)
	nAnnotate_1_1 = 0
	nRecord_1_1 = 0
}
DEFINE_CALL 'UnAnnotate 2'
{
	Call 'Matrix'(nOldProj2SRC_3, nToProj2)
	nAnnotate_2_1 = 0
	nRecord_2_1 = 0
}
DEFINE_CALL 'UnAnnotate LCD'
{
	Call 'Matrix'(nOldProj3SRC_3, nToJuryLCD)
	nAnnotate_3_1 = 0
	nRecord_3_1 = 0
}
(***********************************************************)
(*                STARTUP CODE GOES BELOW      *)
(***********************************************************)
DEFINE_START
cSrcText_3[1] = 'Table 1 VGA 1'
cSrcText_3[2] = 'Table 1 HDMI 1'
cSrcText_3[3] = 'Table 1 VGA 2'
cSrcText_3[4] = 'Table 1 HDMI 2'
cSrcText_3[5] = 'Table 2 VGA 1'
cSrcText_3[6] = 'Table 2 HDMI 1'
cSrcText_3[7] = 'Table 2 VGA 2'
cSrcText_3[8] = 'Table 2 HDMI 2'
cSrcText_3[9] = 'Table 3 VGA 1'
cSrcText_3[10] = 'Table 3 HDMI 1'
cSrcText_3[11] = 'Table 3 VGA 2'
cSrcText_3[12] = 'Table 3 HDMI 2'
cSrcText_3[13] = 'Staff Input L'
cSrcText_3[14] = 'Staff Input L'
cSrcText_3[15] = 'Staff Input R'
cSrcText_3[16] = 'Staff Input R'
nScreensLocked = 1
define_combine(vdvTP_3,dvTP_3)

(***********************************************************)
(*                THE EVENTS GO BELOW                      *)
(***********************************************************)
DEFINE_EVENT
BUTTON_EVENT[vdvTP_3,nBtnTurnOn]
{
	Push:
	{
			if(nCurrDest_3 = 2)
			{
				Call 'Proj_1'(nPowerOn,1)
			}
			if(nCurrDest_3 = 3)
			{
				Call 'Proj_1'(nPowerOn,2)
			}
			if(nCurrDest_3 = 8)
			{
				Call 'LG TV'(nPowerOn)
			}
	}
}
BUTTON_EVENT[vdvTP_3,nBtnPowers]
{
	Push:
	{
		SEND_STRING dvBoeckeler,"$1B,'(RS'"
		switch(button.input.channel)
		{
			Case 86:
			{
				Call 'Proj_1'(nPowerOn,1)
			}
			Case 87:
			{
				Call 'Proj_1'(nPowerOn,2)
			}
			Case 88://Proj 2 off
			{
				Call 'Proj_1'(nPowerOff,2)
			}
			Case 89://Proj 1 off
			{
				Call 'Proj_1'(nPowerOff,1)
			}
			Case 90://LCD OFF
			{
				Call 'LG TV'(nPowerOff)
			}
		}
	}
}
BUTTON_EVENT[vdvTP_3,nBtnScreenLock]
{
	Push:
	{
		nScreensLocked = !nScreensLocked
	}
}
BUTTON_EVENT[vdvTP_3,nBtnDocCam]
{
	Push:
	{
		Call 'Doc Cam'(button.input.channel - 70)
	}
	HOLD[2,repeat]:
	{
		Call 'Doc Cam'(button.input.channel - 70)
	}
}
BUTTON_EVENT[vdvTP_3,nBtnSrcs]
{
	Push:
	{
		OFF[vdvTP_3,nBtnSrcs]
		ON[vdvTP_3,button.input.channel]
		switch(button.input.channel)
		{
			Case 10://
			{
				cSrcTxt_1= 'LAW 1 VGA A'
				nCurrSRC_3 = 1
				nCurrBox = 1
				nCurrVideoType = nTypeVGA
			}
			Case 11://
			{
				cSrcTxt_1= 'LAW 1 HDMI A'
				nCurrSRC_3 = 1
				nCurrBox = 1
				nCurrVideoType = nTypeHDMI
			}
			Case 12://Table 1 Box 2
			{
				cSrcTxt_1= 'LAW 1 VGA B'
				nCurrSRC_3 = 2
				nCurrBox = 2
				nCurrVideoType = nTypeVGA
			}
			Case 13://
			{
				cSrcTxt_1= 'LAW 1 HDMI B'
				nCurrSRC_3 = 2
				nCurrBox = 2
				nCurrVideoType = nTypeHDMI
			}
			Case 14://Table 2
			{
				cSrcTxt_1= 'LAW 2 VGA A'
				nCurrSRC_3 = 3
				nCurrBox = 3
				nCurrVideoType = nTypeVGA
			}
			Case 15://
			{
				cSrcTxt_1= 'LAW 2 HDMI A'
				nCurrSRC_3 = 3
				nCurrBox = 3
				nCurrVideoType = nTypeHDMI
			}
			Case 16://Table 1 Box 2
			{
				cSrcTxt_1= 'LAW 2 VGA B'
				nCurrSRC_3 = 4
				nCurrBox = 4
				nCurrVideoType = nTypeVGA
			}
			Case 17://Table 2 Box 2 HDMI
			{
				cSrcTxt_1= 'LAW 2 HDMI B'
				nCurrSRC_3 = 4
				nCurrBox = 4
				nCurrVideoType = nTypeHDMI
			}
			Case 18://
			{
				cSrcTxt_1= 'LAW 3 VGA A'
				nCurrSRC_3 = 5
				nCurrBox = 5
				nCurrVideoType = nTypeVGA
			}
			Case 19://
			{
				cSrcTxt_1= 'LAW 3 HDMI A'
				nCurrSRC_3 = 5
				nCurrBox = 5
				nCurrVideoType = nTypeHDMI
			}
			Case 20://Table 1 Box 2
			{
				cSrcTxt_1= 'LAW 3 VGA B'
				nCurrSRC_3 = 6
				nCurrBox = 6
				nCurrVideoType = nTypeVGA
			}
			Case 21://
			{
				cSrcTxt_1= 'LAW 3 HDMI B'
				nCurrSRC_3 = 6
				nCurrBox = 6
				nCurrVideoType = nTypeHDMI
			}
			Case 22://Staff Left
			{
				cSrcTxt_1= 'STAFF INPUT L'
				nCurrSRC_3 = 9
				nCurrBox = 7
				nCurrVideoType = nTypeHDMI
			}
			Case 23://
			{
				cSrcTxt_1= 'STAFF INPUT L'
				nCurrSRC_3 = 9
				nCurrBox = 7
				nCurrVideoType = nTypeVGA
			}
			Case 24://Staff Right
			{
				cSrcTxt_1= 'STAFF INPUT R'
				nCurrSRC_3 = 11
				nCurrBox = 8
				nCurrVideoType = nTypeHDMI
			}
			Case 25://
			{
				cSrcTxt_1= 'STAFF INPUT R'
				nCurrSRC_3 = 11
				nCurrBox = 8
				nCurrVideoType = nTypeVGA
			}
			Case 26://not used in DIV 1
			{
				cSrcTxt_1= 'DOC CAM'
				nCurrSRC_3 = 11
				nCurrBox = 9
				nCurrVideoType = nTypeHDMI
			}
			Case 27://Staff CENTER
			{
				cSrcTxt_1= 'STAFF INPUT C'
				nCurrSRC_3 = 10
				nCurrBox = 8
				nCurrVideoType = nTypeHDMI
			}
			Case 28://Staff Center
			{
				cSrcTxt_1= 'STAFF INPUT C'
				nCurrSRC_3 = 10
				nCurrBox = 8
				nCurrVideoType = nTypeVGA
			}
			Case 29://Table 4
			{
				cSrcTxt_1= 'LAW 4 VGA A'
				nCurrSRC_3 = 7
				nCurrBox = 5
				nCurrVideoType = nTypeVGA
			}
			Case 30://Table 4
			{
				cSrcTxt_1= 'LAW 4 HDMI A'
				nCurrSRC_3 = 7
				nCurrBox = 5
				nCurrVideoType = nTypeHDMI
			}
			Case 91://Table 4 Box 2
			{
				cSrcTxt_1= 'LAW 4 VGA B'
				nCurrSRC_3 = 8
				nCurrBox = 7
				nCurrVideoType = nTypeVGA
			}
			Case 92://Table 4
			{
				cSrcTxt_1= 'LAW 4 HDMI B'
				nCurrSRC_3 = 8
				nCurrBox = 7
				nCurrVideoType = nTypeHDMI
			}
		}
	}
}
BUTTON_EVENT[vdvTP_3,nBtnDest]
{
	Push:
	{
		nAnnotate_1_1 = 0
		nAnnotate_2_1 = 0
		nAnnotate_3_1 = 0
		SEND_COMMAND vdvTP_3,"'^ENA-54,1'"
		SEND_COMMAND vdvTP_3,"'^ENA-55,1'"
		SEND_COMMAND vdvTP_3,"'^ENA-83,1'"
		nCurrDest_3 = button.input.channel - 30
		OFF[vdvTP_3,nBtnSrcs]
		ON[vdvTP_3,button.input.channel]
		Call 'Matrix'(nCurrSRC_3,nCurrDest_3)
		SWITCH(button.input.channel)
		{
			Case 32:
			{
				nAnnotate_1_1 = 0
				nPROJ_3_1_SRC_3 = nCurrSRC_3
				nOldProj1SRC_3 = nCurrSRC_3
			}
			Case 33:
			{
				nAnnotate_2_1 = 0
				NPROJ_3_2_SRC_3 = nCurrSRC_3
				nOldProj2SRC_3 = nCurrSRC_3
			} 	
			Case 37:
			{
				nAnnotate_3_1 = 0
				nPROJ_3_3_SRC_3 = nCurrSRC_3
				nOldProj3SRC_3 = nCurrSRC_3
			}
		}
		if(nCurrDest_3 = 2)
		{
			If(nPowerStatus[1] = 0)
			{
				SEND_COMMAND vdvTP_3,"'@PPN-Check user'"
			}
		}
		if(nCurrDest_3 = 3)
		{
			If(nPowerStatus[2] = 0)
			{
				SEND_COMMAND vdvTP_3,"'@PPN-Check user'"
			}
		}
		if(nCurrDest_3 = 8)//lcd
		{
			If(nPowerStatus[3] = 0)
			{
				SEND_COMMAND vdvTP_3,"'@PPN-Check user'"
			}
		}
		If(!nAudioLock)
		{
			Call 'Matrix'(nCurrSRC_3,nAudioToSpkrs)
			SEND_COMMAND vdvTP_3,"'^TXT-' ,itoa(30),',0,',cSrcTxt_1"
			//Call 'Matrix'(nCurrSRC_3,nAudioTojavs)
		}
		IF(nScreensLocked)
		{
			Send_command vdvTP_3,"'^TXT-' ,itoa(32),',0,',cSrcTxt_1"
			Send_command vdvTP_3,"'^TXT-' ,itoa(33),',0,',cSrcTxt_1"
			Send_command vdvTP_3,"'^TXT-' ,itoa(38),',0,',cSrcTxt_1"
			Call 'Set Color'(nCurrSRC_3,32,nSystem_11)
			Call 'Set Color'(nCurrSRC_3,33,nSystem_11)
			Call 'Set Color'(nCurrSRC_3,38,nSystem_11)
		}
		Else
		{
			Send_command vdvTP_3,"'^TXT-' ,itoa(button.input.channel),',0,',cSrcTxt_1"
			Call 'Set Color'(nCurrSRC_3,nCurrDest_3+30,nSystem_11)
		}
		 if(nCurrVideoType = nTypeHDMI)
		{
			Call 'Set HDMI'(dvBoxes[nCurrBox])
		}
		else
		{
			Call 'Set VGA'(dvBoxes[nCurrBox])
		}
		//nCurrBox = 0
	}
}
BUTTON_EVENT[vdvTP_3,nBtnShutDown]
{
	Push:
	{
		Call 'Shutdown'
	}
}
BUTTON_EVENT[vdvTP_3,nBtnStartup]
{
	Push:
	{
		SEND_STRING dvBoeckeler,"$1B,'(RS'"
		Call 'Proj_1'(nPowerOn,1)
		Call 'Proj_1'(nPowerOn,2)
		Call 'LG TV'(nPowerOn)
		Call 'Doc Cam'(nDocCamON)
		Wait 100
		{
			Call 'Proj_1'(nHDMIIn,1)
			Call 'Proj_1'(nHDMIIn,2)
			Call 'LG TV'(nDVID)
		}
	}
}
BUTTON_EVENT[vdvTP_3,nBtnVol]
{
Hold[2,repeat]:
{
	SWITCH(button.input.channel)
		{
			Case 50:
			{
				
				If(nVolVal < 97)
				{	
					nVolVal = nVolVal+3
					SEND_STRING dvVol,"itoa(nVolVal),'V'"
				}
			}
			Case 51:
			{
				
				If(nVolVal  >3)
				{	
					nVolVal = nVolVal - 3
					SEND_STRING dvVol,"itoa(nVolVal),'V'"
				}
			}
		}
}

	Push:
	{
		SEND_LEVEL vdvTP_3,1,nVolVal
		SWITCH(button.input.channel)
		{
			Case 50:
			{
				TO[button.input]
				If(nVolVal < 99)
				{	
					nVolVal++
					SEND_STRING dvVol,"itoa(nVolVal),'V'"
				}
			}
			Case 51:
			{
				TO[button.input]
				If(nVolVal  >1)
				{	
					nVolVal--
					SEND_STRING dvVol,"itoa(nVolVal),'V'"
				}
			}
			Case 52:
			{
				nMute = !nMute
				If(nMute)
				{
					SEND_STRING dvVol,"'0Z'"
				}
				Else
				{
					SEND_STRING dvVol,"'1Z'"
				}
			}
		}
	}
}
BUTTON_EVENT[vdvTP_3,nBtnAudioLock]
{
	PUSH:
	{
		nAudioLock = !nAudioLock
	}
}
BUTTON_EVENT[vdvTP_3,nBtnAnnotate1]//Annotate Proj 1
{
	Push:
	{
		If(nAnnotate_1_1 = 1)//Annotate is on so lets turn if off
		{
			If(!nScreensLocked)//Screens are not locked.
			{
				SEND_COMMAND dvMatrix,"'DO1,4,5,6,7,9,10T'"
				Call 'UnAnnotate 1'
				SEND_COMMAND vdvTP_3,"'^ENA-54,1'"
				SEND_COMMAND vdvTP_3,"'^ENA-55,1'"
				SEND_COMMAND vdvTP_3,"'^ENA-83,1'"
			}
			Else//Screens are locked.
			{
				SEND_COMMAND vdvTP_3,"'^ENA-54,1'"
				SEND_COMMAND vdvTP_3,"'^ENA-55,1'"
				SEND_COMMAND vdvTP_3,"'^ENA-83,1'"
				Call 'UnAnnotate 1'
				Call 'UnAnnotate 2'
				Call 'UnAnnotate LCD'
			}
		}
		Else//Annotate is off so lets turn it on
		{
			nOldProj1SRC_3 = nPROJ_3_1_SRC_3
			Call 'Matrix'(nPROJ_3_1_SRC_3,nToBoeckeler)
			Call 'Matrix'(nBoecklerIn, nToProj1)
			Call 'Matrix'(nBoecklerIn, nToTable1)
			Call 'Matrix'(nBoecklerIn, nToTable2)
			Call 'Matrix'(nBoecklerIn, nToTable3)
			Call 'Matrix'(nBoecklerIn, nToTable4)
			Call 'Matrix'(nBoecklerIn, nToWitness)
			Call 'Matrix'(nBoecklerIn,nToRecord_1)
			IF(nScreensLocked = 1)
			{
				SEND_STRING 0:1:0,"'screens were locked',13,10"
				Call 'Matrix'(nBoecklerIn, nToProj2)
				Call 'Matrix'(nBoecklerIn, nToJuryLCD)
				nOldProj2SRC_3 = nPROJ_3_1_SRC_3
				nOldProj3SRC_3 = nPROJ_3_1_SRC_3
			}
			Else	//Screens are not locked so do this.
			{
				SEND_STRING 0:1:0,"'Got this ELSE this time',13,10"
			}
			SEND_COMMAND vdvTP_3,"'^ENA-54,1'"
			SEND_COMMAND vdvTP_3,"'^ENA-55,0'"
			SEND_COMMAND vdvTP_3,"'^ENA-83,0'"
			ON[button.input]
			nRecord_1_1 = 1
			nAnnotate_1_1 = 1
			nAnnotate_2_1 = 0
			nAnnotate_3_1 = 0
		}
	}
}
BUTTON_EVENT[vdvTP_3,nBtnAnnotate2]//Annotate Proj 2
{
	Push:
	{
		If(nAnnotate_2_1 = 1)
		{
			If(!nScreensLocked)
			{
				SEND_COMMAND dvMatrix,"'DO1,4,5,6,7,9,10T'"
				Call 'UnAnnotate 2'
				SEND_COMMAND vdvTP_3,"'^ENA-54,1'"
				SEND_COMMAND vdvTP_3,"'^ENA-55,1'"
				SEND_COMMAND vdvTP_3,"'^ENA-83,1'"
			}
			Else//Screens are locked
			{
				SEND_COMMAND vdvTP_3,"'^ENA-54,1'"
				SEND_COMMAND vdvTP_3,"'^ENA-55,1'"
				SEND_COMMAND vdvTP_3,"'^ENA-83,1'"
				Call 'UnAnnotate 1'
				Call 'UnAnnotate 2'
				Call 'UnAnnotate LCD'
			}
		}
		Else	//Lets Annotate
		{
			nOldProj2SRC_3 = nPROJ_3_2_SRC_3
			Call 'Matrix'(nPROJ_3_2_SRC_3,nToBoeckeler)
			Call 'Matrix'(nBoecklerIn, nToProj2)
			Call 'Matrix'(nBoecklerIn, nToTable1)
			Call 'Matrix'(nBoecklerIn, nToTable2)
			Call 'Matrix'(nBoecklerIn, nToTable3)
			Call 'Matrix'(nBoecklerIn, nToTable4)
			Call 'Matrix'(nBoecklerIn, nToWitness)
			Call 'Matrix'(nBoecklerIn,nToRecord_1)
			IF(nScreensLocked = 1)
			{
				Call 'Matrix'(nBoecklerIn, nToProj1)
				Call 'Matrix'(nBoecklerIn, nToJuryLCD)
			}
			ON[button.input]
			SEND_COMMAND vdvTP_3,"'^ENA-54,0'"
			SEND_COMMAND vdvTP_3,"'^ENA-55,1'"
			SEND_COMMAND vdvTP_3,"'^ENA-83,0'"
			nRecord_2_1 = 1
			nAnnotate_2_1 = 1
			nAnnotate_1_1 = 0
			nAnnotate_3_1 = 0
		}
	}
}
BUTTON_EVENT[vdvTP_3,nBtnAnnotate3]//Annotate Jury LCD
{
	Push:
	{
		If(nAnnotate_3_1 = 1)//Let unAnnotate
		{
			If(!nScreensLocked)//Screens are NOT locked.
			{
				SEND_COMMAND dvMatrix,"'DO1,4,5,6,7,9,10T'"
				Call 'UnAnnotate LCD'
				SEND_COMMAND vdvTP_3,"'^ENA-54,1'"
				SEND_COMMAND vdvTP_3,"'^ENA-55,1'"
				SEND_COMMAND vdvTP_3,"'^ENA-83,1'"
			}
			Else//Screesn are locked.
			{
				SEND_COMMAND vdvTP_3,"'^ENA-54,1'"
				SEND_COMMAND vdvTP_3,"'^ENA-55,1'"
				SEND_COMMAND vdvTP_3,"'^ENA-83,1'"
				Call 'UnAnnotate 1'
				Call 'UnAnnotate 2'
				Call 'UnAnnotate LCD'
			}
		}
		Else//Lets Annotate
		{
			nOldProj3SRC_3 = nPROJ_3_3_SRC_3
			Call 'Matrix'(nPROJ_3_3_SRC_3,nToBoeckeler)
			Call 'Matrix'(nBoecklerIn, nToJuryLCD)
			Call 'Matrix'(nBoecklerIn, nToTable1)
			Call 'Matrix'(nBoecklerIn, nToTable2)
			Call 'Matrix'(nBoecklerIn, nToTable3)
			Call 'Matrix'(nBoecklerIn, nToTable4)
			Call 'Matrix'(nBoecklerIn, nToWitness)
			Call 'Matrix'(nBoecklerIn,nToRecord_1)
			IF(nScreensLocked)
			{
				Call 'Matrix'(nBoecklerIn, nToProj1)
				Call 'Matrix'(nBoecklerIn, nToProj2)
			}
			ON[button.input]
			SEND_COMMAND vdvTP_3,"'^ENA-54,0'"
			SEND_COMMAND vdvTP_3,"'^ENA-55,0'"
			SEND_COMMAND vdvTP_3,"'^ENA-83,1'"
			nRecord_3_1 = 1
			nAnnotate_2_1 = 0
			nAnnotate_1_1 = 0
			nAnnotate_3_1 = 1
		}
	}
}
BUTTON_EVENT[vdvTP_3,nBtnRecord_1]
{
	PUSH:
	{
		OFF[vdvTP_3,nBtnRecord_1]
		SWITCH(button.input.channel)
		{
			Case 56:
			{
				if(nRecord_1_1 = 1)
				{
					SEND_COMMAND dvMatrix,"'DO',itoa(nToRecord_1),'T'"
					OFF[vdvTP_3,56]
					nRecord_1_1 = 0
				}
				Else
				{
					Call 'Matrix'(nBoecklerIn,nToRecord_1)
					//Call 'Matrix'(nProj_8_1_Src_8,nToRecord_1)
					ON[button.input]
					nRecord_1_1 = 1
				}
			}
			Case 57:
			{
				if(nRecord_2_1 = 1)
				{
					SEND_COMMAND dvMatrix,"'DO',itoa(nToRecord_1),'T'"
					OFF[vdvTP_3,57]
					nRecord_2_1 = 0
				}
				Else
				{
					Call 'Matrix'(nBoecklerIn,nToRecord_1)
					//Call 'Matrix'(nProj_8_2_Src_8,nToRecord_8)
					ON[button.input]
					nRecord_2_1 = 1
				}
			}
			Case 58:
			{
				if(nRecord_3_1 = 1)
				{
					SEND_COMMAND dvMatrix,"'DO',itoa(nToRecord_1),'T'"
					OFF[vdvTP_3,58]
					nRecord_3_1 = 0
				}
				Else
				{
					Call 'Matrix'(nBoecklerIn,nToRecord_1)
					//Call 'Matrix'(nProj_8_3_Src_8,nToRecord_8)
					ON[button.input]
					nRecord_3_1 = 1
				}
			}
		}
	}
}
BUTTON_EVENT[vdvTP_3,205]//Display verify. this was changed fro demo
{
	Push:
	{
		if(nDisplayStatus = 1)//displays are on so lets blank them.
		{
			nDisplayStatus = 0
			//SEND_COMMAND dvMatrix,"'DO4T'"//disconnect witness display remove for demo
			Call 'LG TV'(nDisplayMuteOn)
			Call 'Proj_1'(nDisplayMuteOn,1)
			Call 'Proj_1'(nDisplayMuteOn,2)
			
		}
		ELSE//Lets turn them back on
		{
			nDisplayStatus = 1
			Call 'LG TV'(nDisplayMuteOFF)
			Call 'Proj_1'(nDisplayMuteOFF,1)
			Call 'Proj_1'(nDisplayMuteOFF,2)
			//send_command dvMatrix,"'SO5T'"//read output 5 remove for demo
			//SEND_COMMAND dvMatrix,"'CI',COUT[5],'O4T'" //copy output 5 to output 4 remove for demo
		}
	}
}
BUTTON_EVENT[dvKeypad_3,1]
{
	Push:
	{
		if(nDisplayStatus = 1)//displays are on so lets blank them.
		{
			nDisplayStatus = 0
			SEND_COMMAND dvMatrix,"'DO4T'"//disconnect witness display
			Call 'LG TV'(nDisplayMuteOn)
			Call 'Proj_1'(nDisplayMuteOn,1)
			Call 'Proj_1'(nDisplayMuteOn,2)
			
		}
		ELSE//Lets turn them back on
		{
			nDisplayStatus = 1
			Call 'LG TV'(nDisplayMuteOFF)
			Call 'Proj_1'(nDisplayMuteOFF,1)
			Call 'Proj_1'(nDisplayMuteOFF,2)
			send_command dvMatrix,"'SO5T'"//read output 5
			SEND_COMMAND dvMatrix,"'CI',COUT[5],'O4T'" //copy output 5 to output 4
		}
	}
}
BUTTON_EVENT[dvKeypad_3,5]//
{
	Push:
	{
		
		if(nWitnessStatus = 1)//displays are on so lets turn them off.
		{
			nWitnessStatus = 0
			for(NLOOP = 1;NLOOP<10;NLOOP++)
			{
				send_command dvMatrix,"'SO',ITOA(NLOOP),'T'"
			}
			Call 'LG TV'(nDisplayMuteOn)
			Call 'Proj_1'(nDisplayMuteOn,1)
			Call 'Proj_1'(nDisplayMuteOn,2)
		}
		ELSE
		{
					nWitnessStatus = 1
					Call 'LG TV'(nDisplayMuteOFF)
					Call 'Proj_1'(nDisplayMuteOFF,1)
					Call 'Proj_1'(nDisplayMuteOFF,2)
					SEND_COMMAND dvMatrix,"'CI',cOut[5],'O4T'"
		}
	}
}
BUTTON_EVENT[dvKeypad_3,2]//Review
{
	Push:
	{
		
		If(nReview = 0)
		{
			nReview = 1
			nAnnotate_1_1 = 0
			nAnnotate_2_1 = 0
			nAnnotate_3_1 = 0
			for(NLOOP = 1;NLOOP<10;NLOOP++)
			{
				send_command dvMatrix,"'SO',ITOA(NLOOP),'T'"
			}
			
			SEND_COMMAND dvMatrix,"'CI23O1,2,3,4,5,6,7T'"
			ON[dvKeypad_3,2]
		}
		Else
		{
			for(NLOOP = 1;NLOOP<10;NLOOP++)
			{
				SEND_COMMAND dvMatrix,"'CI',cOut[nloop],'O1,2,3,4,5,6,7T'"
			}
			wait 20
			{
					OFF[dvKeypad_3,2]
					nReview = 0
			}
		}
	}
}

BUTTON_EVENT[dvKeypad_3,6]//Print
{
	PUSH:
	{
		Call 'Print'
		ON[dvKeypad_3,6]
	}
	RELEASE:
	{
		wait 20
			OFF[dvKeypad_3,6]
	}
}
BUTTON_EVENT[dvKeypad_3,4]//This button is the bottom left on the keypad. It resets the Boeckeler to fix USB.
{
	HOLD[30]:
	{
		SEND_STRING dvBoeckeler,"$1B,'(RS'"
		OFF[dvResetIO,1]
	}
}



DATA_EVENT[dvProj1_3]
{
	ONLINE:
	{
		ON[dvKeypad_3,1]
		ON[dvKeypad_3,5]
		SEND_COMMAND dvProj1_3,"'SET BAUD 19200,N,8,1'"
	}
}
DATA_EVENT[dvProj2_3]
{
	ONLINE:
	{
		SEND_COMMAND dvProj2_3,"'SET BAUD 19200,N,8,1'"
	}
}
DATA_EVENT[dvDocCam_3]
{
	ONLINE:
	{
		SEND_COMMAND dvDocCam_3,"'SET BAUD 9600,8,1'"
	}
}
DATA_EVENT[dvCartMon_3]
{
	ONLINE:
	{
		SEND_COMMAND dvCartMon_3,"'SET BAUD 9600,8,1'"
	}
}
data_event[dvMatrix]
{
	COMMAND:
	{
		FOR (nIdx=1 ; nIdx<33 ; nIdx++)
		{
			If(find_string(DATA.TEXT,"'SO',itoa(nIdx),'T( '",1))
			{
				
				cOut[nIdx] = data.text
				remove_string(cOut[nIdx],"'SO',itoa(nIdx),'T( '",1)
				//remove_string(cOut[nIdx],'SO1T( ',1)
				TRASH2 = RIGHT_STRING (cOut[nIdx],2)
				TRASH1 = FIND_STRING(cOut[nIdx],TRASH2,1)
				REMOVE_STRING(cOut[nIdx],TRASH2,TRASH1)
			}
		}
	}
}
(***********************************************************)
(*            THE ACTUAL PROGRAM GOES BELOW     *)
(***********************************************************)

DEFINE_PROGRAM
If(date_to_day(date) = 7)
If(time_to_hour(time) = 23)
{
	SEND_STRING 0:1:0,"'hour is 23',13,10"
	If(time_to_minute(time) = 55)
	{
		SEND_STRING 0:1:0,"'min is 55',13,10"
		wait 500
			Pulse[dvResetIO,1]
		
	}
}
[dvKeypad_3,5] = nWitnessStatus
[dvKeypad_3,1] = nDisplayStatus 
//[vdvTP_3,53] = nMute
[vdvTP_3,nBtnScreenLock] = nScreensLocked
[vdvTP_3, nBtnAudioLock] = nAudioLock
SEND_LEVEL vdvTP_3,1,nVolVal
[vdvTP_3,nBtnAnnotate1] = nAnnotate_1_1
[vdvTP_3,nBtnAnnotate2] = nAnnotate_2_1
[vdvTP_3,nBtnAnnotate3] = nAnnotate_3_1
[vdvTP_3,nBtnRecord_1[1]] = nRecord_1_1
[vdvTP_3,nBtnRecord_1[2]] = nRecord_2_1
[vdvTP_3,nBtnRecord_1[3]] = nRecord_3_1
[vdvTP_3,nBtnRecord_1[4]] = nRecord_4_1
[vdvTP_3,205] = !nDisplayStatus
(***********************************************************)
(*                     END OF PROGRAM                      *)
(*        DO NOT PUT ANY CODE BELOW THIS COMMENT           *)
(***********************************************************)


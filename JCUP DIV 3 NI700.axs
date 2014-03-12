PROGRAM_NAME='JCUP DIV 3 NI700'
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
(*          DEVICE NUMBER DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_DEVICE
dvKeyPadDiv_3 = 85:1:31
dvReset_IO		= 5001:4:31
dvPrinter = 5001:2:31//Port connected to Boeckeler for print command.
(***********************************************************)
(*               CONSTANT DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_CONSTANT

(***********************************************************)
(*              DATA TYPE DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_TYPE

(***********************************************************)
(*               VARIABLE DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_VARIABLE

(***********************************************************)
(*               LATCHING DEFINITIONS GO BELOW             *)
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

(***********************************************************)
(*                STARTUP CODE GOES BELOW                  *)
(***********************************************************)
DEFINE_START

(***********************************************************)
(*                THE EVENTS GO BELOW                      *)
(***********************************************************)
DEFINE_EVENT
(*
BUTTON_EVENT[dvKeyPadDiv_3,4]
{
	Push:
	{
		Off[dvReset_IO,1]
		wait 100//10 sec
		{
			ON[dvReset_IO,1]
		}
	}
}
*)
CHANNEL_EVENT[dvReset_IO,1]
{
	OFF:
	{
		wait 100
		{
			ON[dvReset_IO,1]
		}
	}
}

DATA_EVENT[dvKeyPadDiv_3]
{
	ONLINE:
	{
		send_command data.device,"'SET BAUD 9600,N,8,1 485 DISABLE'"
		ON[dvReset_IO,1]
	}
}
DATA_EVENT[dvPrinter]
{
	ONLINE:
	{
		send_command data.device,"'SET BAUD 9600,N,8,1 485 DISABLE'"
	}
}
(***********************************************************)
(*            THE ACTUAL PROGRAM GOES BELOW                *)
(***********************************************************)
DEFINE_PROGRAM

(***********************************************************)
(*                     END OF PROGRAM                      *)
(*        DO NOT PUT ANY CODE BELOW THIS COMMENT           *)
(***********************************************************)


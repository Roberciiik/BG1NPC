/* CONTENTS */
/* PC talk 1 */
/* PC talk 2 */
/* PC talk 5 */
/* PC talk 3 */
/* PC talk 4 */
/* (after slaughtering Xzar�s superiors upstairs in Sorcerous Sundries */
/* NPC/NPC banters */

APPEND ~%XAN_JOINED%~

/* PC talk 1 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XaFriendTalk","GLOBAL",1)~ THEN BEGIN XAPC1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC1.1
IF ~~ THEN REPLY @2 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC1.2
IF ~~ THEN REPLY @3 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC1.3
IF ~~ THEN REPLY @4 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC1.4
END

IF ~~ THEN BEGIN XAPC1.1
SAY @5
IF ~~ THEN REPLY @6 GOTO XAPC1.5
IF ~~ THEN REPLY @7 GOTO XAPC1.6
IF ~~ THEN REPLY @8 GOTO XAPC1.7
END

IF ~~ THEN BEGIN XAPC1.2
SAY @9
IF ~~ THEN REPLY @10 GOTO XAPC1.8
IF ~~ THEN REPLY @11 GOTO XAPC1.9
IF ~~ THEN REPLY @12 GOTO XAPC1.10
END

IF ~~ THEN BEGIN XAPC1.3
SAY @13
IF ~~ THEN REPLY @14 GOTO XAPC1.5
IF ~~ THEN REPLY @15 GOTO XAPC1.11
IF ~~ THEN REPLY @16 GOTO XAPC1.12
END

IF ~~ THEN BEGIN XAPC1.4
SAY @17
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC1.5
SAY @18
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC1.6
SAY @19
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC1.7
SAY @20
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC1.8
SAY @21
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC1.9
SAY @22
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC1.10
SAY @23
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC1.11
SAY @24
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC1.12
SAY @25
IF ~~ THEN EXIT
END

/* PC talk 2 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XaFriendTalk","GLOBAL",3)~ THEN BEGIN XAPC2
SAY @26
IF ~~ THEN REPLY @27 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",4) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC2.1
IF ~~ THEN REPLY @28 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",4) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC2.2
IF ~~ THEN REPLY @29 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",4) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC2.3
IF ~Race(Player1,ELF)~ THEN REPLY @30 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",4) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC2.4
IF ~Race(Player1,ELF)~ THEN REPLY @31 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",4) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC2.5
IF ~~ THEN REPLY @32 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",4) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC2.6
END

IF ~~ THEN BEGIN XAPC2.1
SAY @33
IF ~~ THEN REPLY @34 GOTO XAPC2.7
IF ~OR(3) !InParty("edwin") !InMyArea("edwin") StateCheck("edwin",CD_STATE_NOTVALID)~ THEN REPLY @35 GOTO XAPC2.8
IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN REPLY @35 GOTO XAPC2.8EDWIN
IF ~~ THEN REPLY @36 GOTO XAPC2.9
END

IF ~~ THEN BEGIN XAPC2.2
SAY @37
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC2.3
SAY @38
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC2.4
SAY @39
IF ~~ THEN REPLY @40 GOTO XAPC2.10
IF ~~ THEN REPLY @41 GOTO XAPC2.11
IF ~Gender(Player1,MALE)~ THEN REPLY @42 GOTO XAPC2.12MALE
IF ~Gender(Player1,FEMALE)~ THEN REPLY @42 GOTO XAPC2.12FEMALE
END

IF ~~ THEN BEGIN XAPC2.5
SAY @43
IF ~Gender(Player1,MALE)~ THEN REPLY @44 GOTO XAPC2.13MALE
IF ~Gender(Player1,FEMALE)~ THEN REPLY @44 GOTO XAPC2.13FEMALE
IF ~~ THEN REPLY @45 GOTO XAPC2.11
IF ~~ THEN REPLY @46 GOTO XAPC2.11
END


IF ~~ THEN BEGIN XAPC2.6
SAY @47
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC2.7
SAY @48
IF ~~ THEN REPLY @49 GOTO XAPC2.14
IF ~~ THEN REPLY @50 GOTO XAPC2.9
END

IF ~~ THEN BEGIN XAPC2.8
SAY @51
IF ~~ THEN REPLY @52 GOTO XAPC2.7
IF ~~ THEN REPLY @53 GOTO XAPC2.15
IF ~~ THEN REPLY @54 GOTO XAPC2.9
END

IF ~~ THEN BEGIN XAPC2.8EDWIN
SAY @55
IF ~~ THEN REPLY @52 GOTO XAPC2.7
IF ~~ THEN REPLY @56 GOTO XAPC2.15
IF ~~ THEN REPLY @57 GOTO XAPC2.9
END

IF ~~ THEN BEGIN XAPC2.9
SAY @58
= @59
IF ~~ THEN REPLY @60 GOTO XAPC2.10
IF ~~ THEN REPLY @61 GOTO XAPC2.11
IF ~!Race(Player1,ELF)~ THEN REPLY @62 GOTO XAPC2.16
IF ~Race(Player1,ELF) Global("P#KnowBhaal","GLOBAL",1)~ THEN REPLY @62 GOTO XAPC2.16ELF
IF ~Race(Player1,ELF) !Global("P#KnowBhaal","GLOBAL",1)~ THEN REPLY @62 GOTO XAPC2.16ELFNOLETTER
IF ~~ THEN REPLY @63 GOTO XAPC2.17
END

IF ~~ THEN BEGIN XAPC2.10
SAY @64
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC2.11
SAY @65
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC2.12MALE
SAY @66
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC2.12FEMALE
SAY @67
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC2.13MALE
SAY @68
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC2.13FEMALE
SAY @69
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN XAPC2.14
SAY @70
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC2.15
SAY @71
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC2.16
SAY @72
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC2.16ELF
SAY @73
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC2.16ELFNOLETTER
SAY @74
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC2.17
SAY @75
= @76
IF ~~ THEN EXIT
END

/* PC talk 5 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XaFriendTalk","GLOBAL",9) Global("X#XAPC3","LOCALS",0)~ THEN BEGIN XAPC3
SAY @77
IF ~ReputationGT(Player1,8)~ THEN REPLY @78 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",10) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC3.1
IF ~ReputationGT(Player1,8)~ THEN REPLY @79 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",10) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC3.2
IF ~ReputationGT(Player1,8)~ THEN REPLY @80 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",10) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC3.3
IF ~!ReputationGT(Player1,8)~ THEN DO ~SetGlobal("X#XaFriendTalk","GLOBAL",10) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ EXIT
END

IF ~~ THEN BEGIN XAPC3.1
SAY @81
IF ~~ THEN REPLY @82 GOTO XAPC3.4
IF ~~ THEN REPLY @83 GOTO XAPC3.5
IF ~!Race(Player1,ELF)~ THEN REPLY @84 GOTO XAPC3.6
IF ~Race(Player1,ELF)~ THEN REPLY @84 GOTO XAPC3.6ELF
END

IF ~~ THEN BEGIN XAPC3.2
SAY @85
IF ~~ THEN REPLY @86 GOTO XAPC3.7
IF ~Race(Player1,ELF)~ THEN REPLY @87 GOTO XAPC3.7ELF
IF ~~ THEN REPLY @88 GOTO XAPC3.8
IF ~~ THEN REPLY @89 GOTO XAPC3.11
END

IF ~~ THEN BEGIN XAPC3.3
SAY @90
IF ~~ THEN REPLY @86 GOTO XAPC3.7
IF ~Race(Player1,ELF)~ THEN REPLY @87 GOTO XAPC3.7ELF
IF ~~ THEN REPLY @88 GOTO XAPC3.8
IF ~~ THEN REPLY @89 GOTO XAPC3.11
END

IF ~~ THEN BEGIN XAPC3.4
SAY @91
IF ~~ THEN REPLY @86 GOTO XAPC3.7
IF ~Race(Player1,ELF)~ THEN REPLY @87 GOTO XAPC3.7ELF
IF ~~ THEN REPLY @88 GOTO XAPC3.8
IF ~~ THEN REPLY @89 GOTO XAPC3.11
END

IF ~~ THEN BEGIN XAPC3.5
SAY @92
IF ~~ THEN REPLY @93 GOTO XAPC3.9
IF ~~ THEN REPLY @86 GOTO XAPC3.7
IF ~Race(Player1,ELF)~ THEN REPLY @87 GOTO XAPC3.7ELF
IF ~~ THEN REPLY @88 GOTO XAPC3.8
IF ~~ THEN REPLY @89 GOTO XAPC3.11
END

IF ~~ THEN BEGIN XAPC3.6
SAY @94
IF ~~ THEN REPLY @95 GOTO XAPC3.2
IF ~~ THEN REPLY @96 GOTO XAPC3.12
IF ~~ THEN REPLY @97 GOTO XAPC3.10
END

IF ~~ THEN BEGIN XAPC3.6ELF
SAY @98
IF ~~ THEN REPLY @99 GOTO XAPC3.2
IF ~~ THEN REPLY @100 GOTO XAPC3.11
IF ~~ THEN REPLY @101 GOTO XAPC3.10
END

IF ~~ THEN BEGIN XAPC3.7
SAY @102
IF ~~ THEN REPLY @103 GOTO XAPC3.13
IF ~~ THEN REPLY @104 GOTO XAPC3.14
IF ~~ THEN REPLY @105 GOTO XAPC3.15
END

IF ~~ THEN BEGIN XAPC3.7ELF
SAY @106
IF ~~ THEN REPLY @107 GOTO XAPC3.13
IF ~~ THEN REPLY @108 GOTO XAPC3.14
IF ~~ THEN REPLY @109 GOTO XAPC3.15
END

IF ~~ THEN BEGIN XAPC3.8
SAY @110
IF ~~ THEN REPLY @111 GOTO XAPC3.16
IF ~Race(Player1,ELF)~ THEN REPLY @112 GOTO XAPC3.17
IF ~~ THEN REPLY @113 GOTO XAPC3.13
IF ~~ THEN REPLY @114 GOTO XAPC3.18
IF ~~ THEN REPLY @115 GOTO XAPC3.19
END

IF ~~ THEN BEGIN XAPC3.9
SAY @116
IF ~~ THEN REPLY @111 GOTO XAPC3.16
IF ~Race(Player1,ELF)~ THEN REPLY @112 GOTO XAPC3.17
IF ~~ THEN REPLY @113 GOTO XAPC3.13
IF ~~ THEN REPLY @114 GOTO XAPC3.18
IF ~~ THEN REPLY @115 GOTO XAPC3.19
END

IF ~~ THEN BEGIN XAPC3.10
SAY @117
IF ~~ THEN REPLY @111 GOTO XAPC3.16
IF ~Race(Player1,ELF)~ THEN REPLY @112 GOTO XAPC3.17
IF ~~ THEN REPLY @113 GOTO XAPC3.13
IF ~~ THEN REPLY @114 GOTO XAPC3.18
IF ~~ THEN REPLY @115 GOTO XAPC3.19
END

IF ~~ THEN BEGIN XAPC3.11
SAY @118
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC3.12
SAY @119
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC3.13
SAY @120
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC3.14
SAY @121
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC3.15
SAY @122
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC3.16
SAY @123
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC3.17
SAY @124
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC3.18
SAY @125
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC3.19
SAY @126
IF ~~ THEN EXIT
END

/* PC talk 3 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XaFriendTalk","GLOBAL",5)~ THEN BEGIN XAPC4
SAY @127
IF ~~ THEN REPLY @128 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",6) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC4.1
IF ~Race(Player1,ELF)~ THEN REPLY @129 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",6) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC4.2ELF
IF ~!Race(Player1,ELF)~ THEN REPLY @129 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",6) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC4.2
IF ~~ THEN REPLY @130 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",6) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC4.3
IF ~~ THEN REPLY @131 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",6) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC4.4
END

IF ~~ THEN BEGIN XAPC4.1
SAY @132
IF ~~ THEN REPLY @131 GOTO XAPC4.4
IF ~~ THEN REPLY @133 GOTO XAPC4.5
IF ~Race(Player1,ELF)~ THEN REPLY @134 GOTO XAPC4.6ELF
IF ~!Race(Player1,ELF)~ THEN REPLY @134 GOTO XAPC4.6
IF ~~ THEN REPLY @135 GOTO XAPC4.7
END

IF ~~ THEN BEGIN XAPC4.2
SAY @136
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC4.2ELF
SAY @137
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC4.3
SAY @138
IF ~~ THEN REPLY @139 GOTO XAPC4.8
IF ~~ THEN REPLY @140 GOTO XAPC4.5
IF ~Race(Player1,ELF)~ THEN REPLY @141 GOTO XAPC4.12ELF
IF ~!Race(Player1,ELF)~ THEN REPLY @141 GOTO XAPC4.12
IF ~~ THEN REPLY @131 GOTO XAPC4.4
END

IF ~~ THEN BEGIN XAPC4.4
SAY @142
IF ~~ THEN REPLY @143 GOTO XAPC4.8
IF ~~ THEN REPLY @144 GOTO XAPC4.9
IF ~~ THEN REPLY @145 GOTO XAPC4.10
IF ~~ THEN REPLY @146 GOTO XAPC4.11
IF ~Gender(Player1,FEMALE)~ THEN REPLY @147 GOTO XAPC4.13
END

IF ~~ THEN BEGIN XAPC4.5
SAY @148
IF ~~ THEN REPLY @149 GOTO XAPC4.14
IF ~~ THEN REPLY @150 GOTO XAPC4.15
IF ~~ THEN REPLY @151 GOTO XAPC4.16
END

IF ~~ THEN BEGIN XAPC4.6
SAY @152
IF ~~ THEN REPLY @153 GOTO XAPC4.14
IF ~~ THEN REPLY @154 GOTO XAPC4.16
IF ~~ THEN REPLY @155 GOTO XAPC4.10
END

IF ~~ THEN BEGIN XAPC4.6ELF
SAY @156
IF ~~ THEN REPLY @157 GOTO XAPC4.15
IF ~~ THEN REPLY @158 GOTO XAPC4.16
IF ~~ THEN REPLY @155 GOTO XAPC4.10
END

IF ~~ THEN BEGIN XAPC4.7
SAY @159
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC4.8
SAY @160
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC4.9
SAY @161
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC4.10
SAY @162 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC4.11
SAY @163 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC4.12ELF
SAY @164
IF ~~ THEN REPLY @157 GOTO XAPC4.17
IF ~~ THEN REPLY @154 GOTO XAPC4.16
IF ~~ THEN REPLY @155 GOTO XAPC4.10
END

IF ~~ THEN BEGIN XAPC4.12
SAY @165
IF ~~ THEN REPLY @166 GOTO XAPC4.14
IF ~~ THEN REPLY @154 GOTO XAPC4.16
IF ~~ THEN REPLY @155 GOTO XAPC4.10
END

IF ~~ THEN BEGIN XAPC4.13
SAY @167
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC4.14
SAY @168
IF ~~ THEN REPLY @169 GOTO XAPC4.18
IF ~~ THEN REPLY @170 GOTO XAPC4.19
IF ~~ THEN REPLY @171 GOTO XAPC4.20
END

IF ~~ THEN BEGIN XAPC4.15
SAY @172
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC4.16
SAY @173
= @174
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC4.17
SAY @175
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC4.18
SAY @176
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC4.19
SAY @177
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC4.20
SAY @178
IF ~~ THEN EXIT
END

/* PC talk 4 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XaFriendTalk","GLOBAL",7)~ THEN BEGIN XAPC5
SAY @179
IF ~~ THEN REPLY @180 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",8) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC5.1
IF ~~ THEN REPLY @181 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",8) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC5.2
IF ~~ THEN REPLY @182 DO ~SetGlobal("X#XaFriendTalk","GLOBAL",8) RealSetGlobalTimer("X#XaFriendTalkTime","GLOBAL",7200)~ GOTO XAPC5.3
END

IF ~~ THEN BEGIN XAPC5.1
SAY @183
IF ~~ THEN REPLY @184 GOTO XAPC5.4
IF ~~ THEN REPLY @185 GOTO XAPC5.5
IF ~~ THEN REPLY @186 GOTO XAPC5.3
IF ~~ THEN REPLY @187 GOTO XAPC5.6
END

IF ~~ THEN BEGIN XAPC5.2
SAY @188
IF ~~ THEN REPLY @189 GOTO XAPC5.1
IF ~~ THEN REPLY @190 GOTO XAPC5.7
IF ~~ THEN REPLY @191 GOTO XAPC5.8
END

IF ~~ THEN BEGIN XAPC5.3
SAY @192
IF ~~ THEN REPLY @193 GOTO XAPC5.1
IF ~~ THEN REPLY @194 GOTO XAPC5.9
IF ~~ THEN REPLY @195 GOTO XAPC5.8
END

IF ~~ THEN BEGIN XAPC5.4
SAY @196
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC5.5
SAY @197
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC5.6
SAY @198
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC5.7
SAY @199
IF ~~ THEN REPLY @193 GOTO XAPC5.1
IF ~~ THEN REPLY @195 GOTO XAPC5.8
IF ~~ THEN REPLY @200 GOTO XAPC5.10
END

IF ~~ THEN BEGIN XAPC5.8
SAY @201
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC5.9
SAY @202
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAPC5.10
SAY @192
IF ~~ THEN REPLY @193 GOTO XAPC5.11
IF ~~ THEN REPLY @195 GOTO XAPC5.8
END

IF ~~ THEN BEGIN XAPC5.11
SAY @183
IF ~~ THEN REPLY @184 GOTO XAPC5.4
IF ~~ THEN REPLY @185 GOTO XAPC5.5
IF ~~ THEN REPLY @187 GOTO XAPC5.6
END

END

/* (after slaughtering Xzar�s superiors upstairs in Sorcerous Sundries */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#XAXZ2","LOCALS",1)~ THEN ~%XAN_JOINED%~ XAXZ2
@203
DO ~SetGlobal("X#XAXZ2","LOCALS",2)~
== ~%XZAR_BANTER%~ @204
== ~%XAN_BANTER%~ @205
== ~%XZAR_BANTER%~ @206
== ~%XAN_BANTER%~ @207
== ~%XZAR_BANTER%~ @208
== ~%XAN_BANTER%~ @209
== ~%XZAR_BANTER%~ @210
EXIT

/* NPC/NPC banters */

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAAJ1","LOCALS",0) CombatCounter(0) InParty("ajantis") !See([ENEMY]) See("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAAJ1
@211
DO ~SetGlobal("X#XAAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @212
== ~%XAN_BANTER%~ @213
== ~%AJANTIS_BANTER%~ @214
== ~%XAN_BANTER%~ @215
== ~%AJANTIS_BANTER%~ @216
== ~%XAN_BANTER%~ @217
== ~%AJANTIS_BANTER%~ @218
== ~%XAN_BANTER%~ @219
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAAL1","LOCALS",0) CombatCounter(0) AreaType(OUTDOOR) InParty("alora") !See([ENEMY]) See("alora") !StateCheck("alora",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAAL1
@220
DO ~SetGlobal("X#XAAL1","LOCALS",1)~
== ~%ALORA_BANTER%~ @221
== ~%XAN_BANTER%~ @222
== ~%ALORA_BANTER%~ @223
== ~%XAN_BANTER%~ @224
== ~%ALORA_BANTER%~ @225
== ~%XAN_BANTER%~ @226
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XABR1","LOCALS",0) CombatCounter(0) InParty("branwen") !See([ENEMY]) See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XABR1
@227
DO ~SetGlobal("X#XABR1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @228
== ~%XAN_BANTER%~ @229
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XACO1","LOCALS",0) Global("P#CoranHasBaby","GLOBAL",1) InParty("coran") CombatCounter(0) !See([ENEMY]) See("coran") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XACO1
@230
DO ~SetGlobal("X#XACO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @231
== ~%XAN_BANTER%~ @232
== ~%CORAN_BANTER%~ @233
== ~%XAN_BANTER%~ @234
== ~%CORAN_BANTER%~ @235
== ~%XAN_BANTER%~ @236
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XACO2","LOCALS",0) CombatCounter(0) InParty("coran") !See([ENEMY]) See("coran") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XACO2
@237
DO ~SetGlobal("X#XACO2","LOCALS",1)~
== ~%CORAN_BANTER%~ @238
== ~%XAN_BANTER%~ @239
== ~%CORAN_BANTER%~ @240
== ~%XAN_BANTER%~ @241
== ~%CORAN_BANTER%~ @242
== ~%XAN_BANTER%~ @243
== ~%CORAN_BANTER%~ @244
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XADY1","LOCALS",0) CombatCounter(0) InParty("dynaheir") !See([ENEMY]) See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XADY1
@245
DO ~SetGlobal("X#XADY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @246
== ~%XAN_BANTER%~ @247
== ~%DYNAHEIR_BANTER%~ @248
== ~%XAN_BANTER%~ @249
== ~%DYNAHEIR_BANTER%~ @250
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAED1","LOCALS",0) CombatCounter(0) InParty("edwin") !See([ENEMY]) See("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAED1
@251
DO ~SetGlobal("X#XAED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @252
== ~%XAN_BANTER%~ @253
== ~%EDWIN_BANTER%~ @254
== ~%XAN_BANTER%~ @255
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAEL1","LOCALS",0) CombatCounter(0) InParty("eldoth") !See([ENEMY]) See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAEL1
@256
DO ~SetGlobal("X#XAEL1","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @257
== ~%XAN_BANTER%~ @258
== ~%ELDOTH_BANTER%~ @259
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAFA1","LOCALS",0) CombatCounter(0) AreaType(FOREST) InParty("faldorn") !See([ENEMY]) See("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAFA1
@260 
DO ~SetGlobal("X#XAFA1","LOCALS",1)~
== ~%FALDORN_BANTER%~ @261
== ~%XAN_BANTER%~ @262
== ~%FALDORN_BANTER%~ @263
== ~%XAN_BANTER%~ @264
== ~%FALDORN_BANTER%~ @265
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAFA2","LOCALS",0) CombatCounter(0) InParty("faldorn") !See([ENEMY]) See("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAFA2
@266
DO ~SetGlobal("X#XAFA2","LOCALS",1)~
== ~%FALDORN_BANTER%~ @267
== ~%XAN_BANTER%~ @268
== ~%FALDORN_BANTER%~ @269
= @270
== ~%XAN_BANTER%~ @271
== ~%FALDORN_BANTER%~ @272
== ~%XAN_BANTER%~ @273
= @274
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAGA1","LOCALS",0) CombatCounter(0) InParty("garrick") !See([ENEMY]) See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAGA1
@275
DO ~SetGlobal("X#XAGA1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @276
== ~%XAN_BANTER%~ @277
== ~%GARRICK_BANTER%~ @278
== ~%XAN_BANTER%~ @279
== ~%GARRICK_BANTER%~ @280
== ~%XAN_BANTER%~ @281
== ~%GARRICK_BANTER%~ @282
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAGA2","LOCALS",0) CombatCounter(0) InParty("garrick") InParty("skie") Dead("skie") !See([ENEMY]) See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAGA2
@283
DO ~SetGlobal("X#XAGA2","LOCALS",1)~
== ~%GARRICK_BANTER%~ @284
== ~%XAN_BANTER%~ @285
= @286
== ~%GARRICK_BANTER%~ @287
== ~%XAN_BANTER%~ @288
= @289
== ~%GARRICK_BANTER%~ @290
== ~%XAN_BANTER%~ @291
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAIM1","LOCALS",0) CombatCounter(0) InParty("%IMOEN_DV%") !See([ENEMY]) See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAIM1
@292
DO ~SetGlobal("X#XAIM1","LOCALS",1)~
== ~%IMOEN_BANTER%~ @293
== ~%XAN_BANTER%~ @294
== ~%IMOEN_BANTER%~ @295
== ~%XAN_BANTER%~ @296
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAJA1","LOCALS",0) CombatCounter(0) InParty("jaheira") !See([ENEMY]) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAJA1
@297
DO ~SetGlobal("X#XAJA1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @298
== ~%XAN_BANTER%~ @299
== ~%JAHEIRA_BANTER%~ @300
== ~%XAN_BANTER%~ @301
== ~%JAHEIRA_BANTER%~ @302
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAKA1","LOCALS",0) CombatCounter(0) InParty("kagain") !See([ENEMY]) See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAKA1
@303
DO ~SetGlobal("X#XAKA1","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @304
== ~%XAN_BANTER%~ @305
== ~%KAGAIN_BANTER%~ @306
== ~%XAN_BANTER%~ @307
== ~%KAGAIN_BANTER%~ @308
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAKH1","LOCALS",0) CombatCounter(0) AreaType(FOREST) InParty("khalid") InParty("jaheira") !See([ENEMY]) See("khalid") See("jaheira") !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAKH1
@309
DO ~SetGlobal("X#XAKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @310
== ~%XAN_BANTER%~ @311
== ~%KHALID_BANTER%~ @312
== ~%XAN_BANTER%~ @313
== ~%KHALID_BANTER%~ @314
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAKI1","LOCALS",0) CombatCounter(0) InParty("kivan") !See([ENEMY]) See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAKI1
@315
DO ~SetGlobal("X#XAKI1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @316
== ~%XAN_BANTER%~ @317
== ~%KIVAN_BANTER%~ @318
== ~%XAN_BANTER%~ @319
== ~%KIVAN_BANTER%~ @320
== ~%XAN_BANTER%~ @321
== ~%KIVAN_BANTER%~ @322
== ~%XAN_BANTER%~ @323
== ~%KIVAN_BANTER%~ @324
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAKI2","LOCALS",0) CombatCounter(0) InParty("kivan") !See([ENEMY]) See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAKI2
@325 
DO ~SetGlobal("X#XAKI2","LOCALS",1)~
== ~%KIVAN_BANTER%~ @326
== ~%XAN_BANTER%~ @327
== ~%KIVAN_BANTER%~ @328
== ~%XAN_BANTER%~ @329
== ~%KIVAN_BANTER%~ @330
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAMI1","GLOBAL",0) CombatCounter(0) InParty("minsc") !See([ENEMY]) See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAMI1
@331
DO ~SetGlobal("X#XAMI1","GLOBAL",1)~
== ~%MINSC_BANTER%~ @332
== ~%XAN_BANTER%~ @333
== ~%MINSC_BANTER%~ @334
== ~%XAN_BANTER%~ @335
== ~%MINSC_BANTER%~ @336
== ~%XAN_BANTER%~ @337
== ~%MINSC_BANTER%~ @338 
== ~%MINSC_BANTER%~ @339
= @340
== ~%XAN_BANTER%~ @341
== ~%MINSC_BANTER%~ @342
= @338 
== ~%XAN_BANTER%~ @343
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAMO1","LOCALS",0) CombatCounter(0) InParty("montaron") !See([ENEMY]) See("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAMO1
@344
DO ~SetGlobal("X#XAMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @345
== ~%XAN_BANTER%~ @346
== ~%MONTARON_BANTER%~ @347
== ~%XAN_BANTER%~ @348
== ~%MONTARON_BANTER%~ @349
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAQU1","LOCALS",0) CombatCounter(0) InParty("quayle") !See([ENEMY]) See("quayle") !StateCheck("quayle",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) AreaType(FOREST)~ THEN ~%XAN_BANTER%~ XAQU1
@350
DO ~SetGlobal("X#XAQU1","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @351
== ~%XAN_BANTER%~ @352
== ~%QUAYLE_BANTER%~ @353
= @354
== ~%XAN_BANTER%~ @355
== ~%QUAYLE_BANTER%~ @356
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XASA1","LOCALS",0) CombatCounter(0) InParty("safana") !See([ENEMY]) See("safana") !StateCheck("safana",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XASA1
@357
DO ~SetGlobal("X#XASA1","LOCALS",1)~
== ~%SAFANA_BANTER%~ @358
== ~%XAN_BANTER%~ @359
== ~%SAFANA_BANTER%~ @360
== ~%XAN_BANTER%~ @361
== ~%SAFANA_BANTER%~ @362
== ~%XAN_BANTER%~ @363
== ~%SAFANA_BANTER%~ @364
== ~%XAN_BANTER%~ @365
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XASH1","LOCALS",0) CombatCounter(0) TimeOfDay(DAY) InParty("sharteel") !See([ENEMY]) See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XASH1
@366
DO ~SetGlobal("X#XASH1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @367
== ~%XAN_BANTER%~ @368
== ~%SHARTEEL_BANTER%~ @369
== ~%XAN_BANTER%~ @370
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XASK1","LOCALS",0) CombatCounter(0) InParty("skie") InParty("eldoth") !See([ENEMY]) See("skie") See("eldoth") !StateCheck("skie",CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XASK1
@371
DO ~SetGlobal("X#XASK1","LOCALS",1)~
== ~%SKIE_BANTER%~ @372
== ~%XAN_BANTER%~ @373
== ~%SKIE_BANTER%~ @374
== ~%XAN_BANTER%~ @375
== ~%SKIE_BANTER%~ @376
== ~%XAN_BANTER%~ @377
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XATI1","LOCALS",0) CombatCounter(0) InParty("tiax") !See([ENEMY]) See("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XATI1
@378
DO ~SetGlobal("X#XATI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @379
== ~%XAN_BANTER%~ @380
== ~%TIAX_BANTER%~ @381
== ~%XAN_BANTER%~ @382
== ~%TIAX_BANTER%~ @383
== ~%XAN_BANTER%~ @384
== ~%TIAX_BANTER%~ @385
== ~%XAN_BANTER%~ @386
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAVI1","LOCALS",0) HPPercentLT("xan",50) CombatCounter(0) InParty("viconia") !See([ENEMY]) See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAVI1
@387
DO ~SetGlobal("X#XAVI1","LOCALS",1)~
== ~%VICONIA_BANTER%~ @388
== ~%XAN_BANTER%~ @389
== ~%VICONIA_BANTER%~ @390
== ~%XAN_BANTER%~ @391
== ~%VICONIA_BANTER%~ @392
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAXZ1","LOCALS",0) CombatCounter(0) InParty("xzar") InParty("montaron") !See([ENEMY]) See("xzar") See("montaron") !StateCheck("xzar",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAXZ1
@393
DO ~SetGlobal("X#XAXZ1","LOCALS",1)~
== ~%XZAR_BANTER%~ @394
== ~%XAN_BANTER%~ @395
== ~%XZAR_BANTER%~ @396
== ~%XAN_BANTER%~ @397
== ~%XZAR_BANTER%~ @398
== ~%XAN_BANTER%~ @399
== ~%XZAR_BANTER%~ @400
== ~%XAN_BANTER%~ @401
== ~%XZAR_BANTER%~ @402
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XAYE1","LOCALS",0) CombatCounter(0) InParty("yeslick") !See([ENEMY]) See("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAYE1
@403
DO ~SetGlobal("X#XAYE1","LOCALS",1)~
== ~%YESLICK_BANTER%~ @404
== ~%XAN_BANTER%~ @405
== ~%YESLICK_BANTER%~ @406
== ~%XAN_BANTER%~ @407
== ~%YESLICK_BANTER%~ @408
== ~%XAN_BANTER%~ @409
EXIT

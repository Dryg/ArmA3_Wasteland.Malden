//	@file Name: setupClientPVars.sqf
//	@file Author: AgentRev

#define PVAR_TARGET(CODE) _params = _this select 1; \
if ((_params select 0) call isPVarTarget) then { _value = _params select 1; CODE };


"currentDate" addPublicVariableEventHandler {[] spawn timeSync};
"messageSystem" addPublicVariableEventHandler {[] spawn serverMessage};
"clientMissionMarkers" addPublicVariableEventHandler {[] spawn updateMissionsMarkers};
// "clientRadarMarkers" addPublicVariableEventHandler {[] spawn updateRadarMarkers};
"pvar_teamKillList" addPublicVariableEventHandler {[] spawn updateTeamKiller};
"publicVar_teamkillMessage" addPublicVariableEventHandler {if (local (_this select 1)) then { [] spawn teamkillMessage }};
"pvar_groupNotify" addPublicVariableEventHandler { (_this select 1) spawn groupNotify };
"pvar_disableCollision" addPublicVariableEventHandler { (_this select 1) call fn_disableCollision };

"pvar_territoryActivityHandler" addPublicVariableEventHandler { PVAR_TARGET(_value call A3W_fnc_territoryActivityHandler) };
"pvar_updateTerritoryMarkers" addPublicVariableEventHandler { PVAR_TARGET(_value call updateTerritoryMarkers) };

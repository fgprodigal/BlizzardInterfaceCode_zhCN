﻿
-- This is a symbol available for people who need to know the locale (separate from GetLocale())
LOCALE_zhCN = true;

function Localize()
	-- Put all locale specific string adjustments here
end

function LocalizeFrames()
	-- Put all locale specific UI adjustments here
	
	-- Hide profanity checkbox
	-- UIOptionsFrameCheckButton5:Hide();

	-- Adjust text in character and friends frame tabs
	for i=1, (CharacterFrame.numTabs or 0) do
		local tabName = "CharacterFrameTab"..i;
		_G[tabName.."Text"]:SetPoint("CENTER", tabName, "CENTER", 0, 5);
		tabName = "FriendsFrameTab"..i;
		_G[tabName.."Text"]:SetPoint("CENTER", tabName, "CENTER", 0, 5);
	end

	for i = 1, WHOS_TO_DISPLAY do
		--Who tab
		_G["WhoFrameButton" .. i .. "Name"]:SetPoint("TOPLEFT", 10, -2);
	end

	--Fix the positioning of the dropdown list
	WhoFrameDropDown:SetPoint("TOPLEFT", WhoFrameColumnHeader2, "TOPLEFT", -15, 1);

	for i = 1, MAX_CHANNEL_MEMBER_BUTTONS do
		--Chat tab
		_G["ChannelMemberButton" .. i .. "Name"]:SetPoint("TOPLEFT", 13, 1);
	end

	-- Guild Member Detail Window Custom Sizing
	GUILD_DETAIL_NORM_HEIGHT = 222
	GUILD_DETAIL_OFFICER_HEIGHT = 285

	-- Mailframe tabs
	for i=1, (MailFrame.numTabs or 0) do
		local tabName = "MailFrameTab"..i;
		_G[tabName.."Text"]:SetPoint("CENTER", tabName, "CENTER", 0, 5);
	end

	-- Chat Editbox
	ChatEdit_LanguageShow();


	-- Quest Log
	QuestLogQuestCount:SetPoint("TOPRIGHT", "QuestLogCountTopRight", "BOTTOMLEFT", 1, 6);
	QuestLogDailyQuestCount:SetPoint("TOPLEFT", "QuestLogQuestCount", "BOTTOMLEFT", 0, 2);


	local point, relativeTo, relativePoint, xOfs, yOfs;

	-- Player Frame
	point, relativeTo, relativePoint, xOfs, yOfs = PlayerFrameHealthBarText:GetPoint();
	PlayerFrameHealthBarText:SetPoint(point, relativeTo, relativePoint, 50, 3);

	-- Pet Frame
	PetFrameHealthBarText:SetPoint("CENTER", PetFrameHealthBarText:GetParent(), "TOPLEFT", 82, -26);
	PetFrameManaBarText:SetPoint("CENTER", PetFrameManaBarText:GetParent(), "TOPLEFT", 82, -34);

	-- Party Frame
	for i=1, MAX_PARTY_MEMBERS do
		local currPartyMemberBarText;

		-- adjust health bar text
		currPartyMemberBarText = _G["PartyMemberFrame"..i.."HealthBarText"];
		point, relativeTo, relativePoint, xOfs, yOfs = currPartyMemberBarText:GetPoint();
		currPartyMemberBarText:SetPoint(point, relativeTo, relativePoint, 20, 11);

		-- adjust mana bar text
		currPartyMemberBarText = _G["PartyMemberFrame"..i.."ManaBarText"];
		point, relativeTo, relativePoint, xOfs, yOfs = currPartyMemberBarText:GetPoint();
		currPartyMemberBarText:SetPoint(point, relativeTo, relativePoint, 20, 2);
	end

	-- Reputation Watch Bar
	ReputationWatchStatusBarText:SetFontObject(TextStatusBarText);

	-- Set range indicator for ActionBar. The text on action buttons is switched as needed so changing it here is enough.
	RANGE_INDICATOR = "•";
	-- WatchFrame item button template sets the text to be RANGE_INDICATOR, so must iterate through any existing buttons
	for i = 1, WATCHFRAME_NUM_ITEMS do
		_G["WatchFrameItem"..i.."HotKey"]:SetText(RANGE_INDICATOR);
	end
	
	-- Equipment Manager
	GearManagerDialogPopupNameText:SetPoint("TOPLEFT", 24, -18);
	GearManagerDialogPopupChooseIconText:SetPoint("TOPLEFT", 24, -66);

	-- Fix money display everywhere
	MONEY_TEXT_VADJUST = 2;	
	
	-- Combat log config 
	CombatConfigColorsExampleTitle:Hide();
	CombatConfigColorsExampleString1:SetPoint("TOPLEFT", 25, -16);
	CombatConfigFormattingExampleTitle:Hide();
	CombatConfigFormattingExampleString1:SetPoint("TOPLEFT", 15, -16);
	
	-- Friends
	for _, button in pairs(FriendsFrameFriendsScrollFrame.buttons) do
		button.info:SetPoint("TOPLEFT", button.name, "BOTTOMLEFT", 0, -6);
	end
	FRIENDS_BUTTON_NORMAL_HEIGHT = 38;
	FRIENDS_BUTTON_LARGE_HEIGHT = 52;
	
	
	EJ_MIN_CHARACTER_SEARCH = 1;
	
	-- Interface Options
	InterfaceOptionsSocialPanelProfanityFilter:Disable();
end



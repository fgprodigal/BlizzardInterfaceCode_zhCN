function Localize()
	-- Put all locale specific string adjustments here
end

function LocalizeFrames()
	-- Put all locale specific UI adjustments here
	AccountLoginLogo:SetTexture("Interface\\Glues\\Common\\Glues-WoW-ChineseCCLogo");
	CharacterCreateLogo:SetTexture("Interface\\Glues\\Common\\Glues-WoW-ChineseCCLogo");
	CharacterSelectLogo:SetTexture("Interface\\Glues\\Common\\Glues-WoW-ChineseCCLogo");
	CreditsLogo:SetTexture("Interface\\Glues\\Common\\Glues-WoW-ChineseCCLogo");
	PatchDownloadLogo:SetTexture("Interface\\Glues\\Common\\Glues-WoW-ChineseCCLogo");
	RealmWizardLogo:SetTexture("Interface\\Glues\\Common\\Glues-WoW-ChineseCCLogo");
	
	CharacterSelectCharacterFrame:SetHeight(650);
	CharacterCreateNameEdit:SetMaxLetters(12);
	CharacterCreateLogo:SetWidth(241);
	CharacterCreateLogo:SetHeight(120);
	CharacterCreateLogo:SetPoint("TOP", CharacterCreateWoWLogo, "TOPLEFT", 129, -5);

	-- Hide the Roleplaying an rppvp buttons in the Chinese build
	RealmWizardStyle:SetHeight(160);
	RealmWizardGameTypeButton3:Hide();
	RealmWizardGameTypeButton4:Hide();

	-- Defined variable to show gameroom billing messages
	SHOW_GAMEROOM_BILLING_FRAME = 1;

	-- Hide save username button
	AccountLoginSaveAccountName:Hide();
	AccountLoginSaveAccountNameText:Hide();
	SAVE_ACCOUNT_BUTTON_HIDDEN = true;

	-- Fix a spacing issue in the Matrix Security Frame
	SecurityMatrixKeypadDirections:SetPoint("TOPLEFT", SecurityMatrixFrame, "TOPRIGHT", 4, 0);

   	-- Hide the "Show Launcher" button in this locale
    AccountLoginShowLauncher:Hide();
	
	-- fix the credits screen
	CreditsArtInfo[3] = {};
	CreditsArtInfo[3][1] = { file="ColdarraNexTGA", w=1024, h=512, offsetx=0, offsety=0, maxAlpha=0.7 };
end

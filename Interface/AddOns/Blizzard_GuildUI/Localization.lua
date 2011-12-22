-- Guild Member Detail Window Custom Sizing
GUILD_DETAIL_NORM_HEIGHT = 206
GUILD_DETAIL_OFFICER_HEIGHT = 264

-- Faction display
GuildFactionFrameHeader:SetPoint("TOPLEFT", 0, 17);

-- more room for rewards
GUILD_REWARDS_BUTTON_HEIGHT = 57;
for _, button in pairs(GuildRewardsContainer.buttons) do
	button:SetHeight(GUILD_REWARDS_BUTTON_HEIGHT);
	button.subText:SetSpacing(1);
	button.subText:SetPoint("LEFT", 48, -12);
end
GuildRewardsContainer.buttonHeight = GUILD_REWARDS_BUTTON_HEIGHT;
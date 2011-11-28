


function LocalizePost()
	-- Put all locale specific string adjustments here
end

function TextStatusBar_CapDisplayOfNumericValue(value)
	local strLen = strlen(value);
	local retString = value;
	if ( strLen >= 11 ) then
		retString = string.sub(value, 1, -8)..SECOND_NUMBER_CAP;
	elseif ( strLen >= 9 ) then
		retString = string.sub(value, 1, -9).."."..string.sub(value, -8, -7)..SECOND_NUMBER_CAP;
	elseif ( strLen >= 7 ) then
		retString = string.sub(value, 1, -5)..FIRST_NUMBER_CAP;
	end
	return retString;
end

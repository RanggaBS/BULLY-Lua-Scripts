RequireLoaderVersion(3)


_G.math.clamp = function(value, min, max)
	return value < min and min or (value > max and max or value)
end

_G.math.lerp = function(a, b, t)
	return a + (b-a) * t
end

_G.math.randomrange = function(min, max)
	return min + math.random() * (max - min)
end


-- easings.net
_G.easing = {}
easing.outQuad = function(x)
	return 1 - (1 - x) * (1 - x)
end

easing.inOutQuad = function(x)
	return x < 0.5 and 2*x*x or 1-math.pow(-2*x+2, 2)/2
end


function DistanceBetweenPoints(x, y)
	return math.sqrt((x-y)^2)
end


function main()
	while not SystemIsReady() do
		Wait(0)
	end

	local forceUnlockGary = false
	local forceUnlockPete = false
	local function GetGaryUnlocked()
		-- Unlock Gary after This Is Your School mission and before Chapter 1 finished, or after Chapter 5 finished
		return forceUnlockGary or ((IsMissionCompleated("1_02B") and not IsMissionCompleated("1_B")) or IsMissionCompleated("6_B"))
	end
	local function GetPeteUnlocked()
		-- Unlock Pete after Chapter 1 finished
		return forceUnlockPete or IsMissionCompleated("1_B")
	end

	GTAV_CHAR_SWITCH = {
		timer = GetTimer(),
		active = false,
		mouse = {0, 0},
		char = {
			select = 1, lastSelected = 1,
			{model = "player", pos = {330, 131, 5.1}, statType = "STAT_PLAYER"},
			{model = "Nemesis_Gary", pos = {580, -90, 5.5}, statType = "STAT_GS_GARY"},
			{model = "Peter", pos = {250, -73, 6.2}, statType = "STAT_GS_MALE_A"}
		},
		textures = {
			-- Wheel
			{group = "wheel", type = "rectangle", amount = {
				{pos = {-0.1, -0.1}, size = {1.1, 1.1}, color = {0, 0, 0}, alpha = 0}
			}},
			{group = "wheel", type = "texture", amount = {
				{fileName = "BG_CIRCLE", pos = {0.825, 0.685}, scale = 0.3, color = {0, 0, 0}, alpha = 100}
			}},
			{group = "wheel", type = "texture", amount = {
				{fileName = "BG_CHAR_1", pos = {0.825, 0.685}, scale = 0.3, color = {255, 255, 255}, alpha = 60},
				{fileName = "BG_CHAR_2", pos = {0.825, 0.685}, scale = 0.3, color = {255, 255, 255}, alpha = 60},
				{fileName = "BG_CHAR_3", pos = {0.825, 0.685}, scale = 0.3, color = {255, 255, 255}, alpha = 60}
			}},
			{group = "wheel", type = "texture", amount = {
				{fileName = "BG_CIRCLE_OUTLINE", pos = {0.825, 0.685}, scale = 0.3, color = {0, 0, 0}, alpha = 150}
			}},
			{group = "wheel", type = "texture", amount = {
				{fileName = "CHAR_1", pos = {0.825, 0.685}, scale = 0.3, color = {255, 255, 255}, alpha = 255},
				{fileName = "CHAR_2", pos = {0.825, 0.685}, scale = 0.3, color = {255, 255, 255}, alpha = 255},
				{fileName = "CHAR_3", pos = {0.825, 0.685}, scale = 0.3, color = {255, 255, 255}, alpha = 255}
			}},
			{group = "wheel", type = "texture", amount = {
				{fileName = "LINE_CHAR_1", pos = {0.825, 0.685}, scale = 0.3, color = {255, 255, 255}, alpha = 255},
				{fileName = "LINE_CHAR_2", pos = {0.825, 0.685}, scale = 0.3, color = {255, 255, 255}, alpha = 255},
				{fileName = "LINE_CHAR_3", pos = {0.825, 0.685}, scale = 0.3, color = {255, 255, 255}, alpha = 255}
			}},

			-- Stats
			{group = "stat", type = "rectangle", amount = {
				{pos = {0.825, 0.345}, size = {0.17, 0.33}, color = {0, 0, 0}, alpha = 127}
			}},
			{group = "stat", type = "text", amount = {
				{statName = "Stamina",			format = {Formatting = 2, Color = {255, 255, 255, 255}, Align = "LEFT", Scale = 1, Position = {0.835, 0.36}}},	-- Y Position: +0.08
				{statName = "Strength", 		format = {Formatting = 2, Color = {255, 255, 255, 255}, Align = "LEFT", Scale = 1, Position = {0.835, 0.44}}},
				{statName = "Weapon Accuracy",	format = {Formatting = 2, Color = {255, 255, 255, 255}, Align = "LEFT", Scale = 1, Position = {0.835, 0.52}}},
				{statName = "Intelligence", 	format = {Formatting = 2, Color = {255, 255, 255, 255}, Align = "LEFT", Scale = 1, Position = {0.835, 0.6}}},
			}},

			{group = "stat_value", type = "rectangle", amount = {
				-- Value: 0 - 100
				-- Y Position: +0.08

				-- Stamina
				{pos = {0.835, 0.395}, size = {0.15, 0.02}, color = {249, 174, 29}, alpha = 255, value = {
					100,	-- char 1
					60,		-- char 2
					60		-- char 3
				}},

				-- Strength
				{pos = {0.835, 0.475}, size = {0.15, 0.02}, color = {249, 174, 29}, alpha = 255, value = {
					85,	-- char 1
					60,	-- char 2
					30	-- char 3
				}},

				-- Weapon Accuracy
				{pos = {0.835, 0.555}, size = {0.15, 0.02}, color = {249, 174, 29}, alpha = 255, value = {
					95,	-- char 1
					50,	-- char 2
					20	-- char 3
				}},

				-- Intelligence
				{pos = {0.835, 0.635}, size = {0.15, 0.02}, color = {249, 174, 29}, alpha = 255, value = {
					70,	-- char 1
					50,	-- char 2
					90	-- char 3
				}},
			}}
		},
	}

	for _, component in ipairs(GTAV_CHAR_SWITCH.textures) do
		if component.type == "texture" then
			for __, texture in ipairs(component.amount) do
				texture.T = CreateTexture("images/" .. texture.fileName .. ".png")
				texture.aspectRatio = GetTextureDisplayAspectRatio(texture.T)
			end
		end
	end

	collectgarbage()

	while true do
		Wait(0)

		-- Toggle
		if IsKeyPressed("LCONTROL") then
			if GetTimer() >= GTAV_CHAR_SWITCH.timer+500 then
				if MissionActive() then
					if GetCutsceneRunning() == 0 then
						SoundPlay2D("WrongBtn")
						DrawTextInline("Finish the mission first!", 3, 1)
						Wait(1500)
					end
				else
					if AreaGetVisible() == 0 then
						if GetCutsceneRunning() == 0 then
							GTAV_CHAR_SWITCH.active = true
						end
					else
						SoundPlay2D("WrongBtn")
						DrawTextInline("You can't switch characters while you're in an interior!", 3, 1)
						Wait(1500)
					end
				end
			end
		else
			GTAV_CHAR_SWITCH.timer = GetTimer()
			GTAV_CHAR_SWITCH.active = false
		end

		-- Active
		if GTAV_CHAR_SWITCH.active then

			PauseGameClock()
			for _, hud in ipairs({0, 4, 11}) do
				ToggleHUDComponentVisibility(hud, false)
			end
			GTAV_CHAR_SWITCH.textures[1].amount[1].alpha = 150

			while IsKeyPressed("VK_CONTROL") do
				Wait(0)

				for _, ped in {PedFindInAreaXYZ(0, 0, 0, 99999)} do
					if PedIsValid(ped) and GameGetPedStat(ped, 20) ~= 5 then
						PedOverrideStat(ped, 20, 5)
					end
				end
				PlayerLockButtonInputsExcept(true, 16, 17)

				GTAV_CHAR_SWITCH.mouse[1], GTAV_CHAR_SWITCH.mouse[2] = math.clamp(GTAV_CHAR_SWITCH.mouse[1] + (-GetStickValue(18, 0) / 10), -0.3, 0.3), math.clamp(GTAV_CHAR_SWITCH.mouse[2] + (GetStickValue(19, 0) / 10), 0, 0.3)
				if GTAV_CHAR_SWITCH.mouse[1] <= -0.3 and GTAV_CHAR_SWITCH.char.select ~= 2 and GetGaryUnlocked() then
					GTAV_CHAR_SWITCH.char.select = 2
					GTAV_CHAR_SWITCH.mouse[1], GTAV_CHAR_SWITCH.mouse[2] = -0.3, 0
					SoundPlay2D("NavDwn")
				elseif GTAV_CHAR_SWITCH.mouse[1] >= 0.3 and GTAV_CHAR_SWITCH.char.select ~= 3 and GetPeteUnlocked() then
					GTAV_CHAR_SWITCH.char.select = 3
					GTAV_CHAR_SWITCH.mouse[1], GTAV_CHAR_SWITCH.mouse[2] = 0.3, 0
					SoundPlay2D("NavDwn")
				elseif GTAV_CHAR_SWITCH.mouse[2] >= 0.3 and GTAV_CHAR_SWITCH.char.select ~= 1 then
					GTAV_CHAR_SWITCH.char.select = 1
					GTAV_CHAR_SWITCH.mouse[1], GTAV_CHAR_SWITCH.mouse[2] = 0, 0.3
					SoundPlay2D("NavDwn")
				end

				-- Draw UI
				for layer, component in ipairs(GTAV_CHAR_SWITCH.textures) do
					if component.type == "rectangle" and component.group ~= "stat_value" then
						for __, rectangle in ipairs(component.amount) do
							DrawRectangle(rectangle.pos[1], rectangle.pos[2], rectangle.size[1], rectangle.size[2], rectangle.color[1], rectangle.color[2], rectangle.color[3], rectangle.alpha)
						end
					elseif component.type == "texture" then
						if layer == 3 then
							local bg_selected_char = component.amount[GTAV_CHAR_SWITCH.char.select]
							DrawTexture(bg_selected_char.T, bg_selected_char.pos[1], bg_selected_char.pos[2], bg_selected_char.scale * bg_selected_char.aspectRatio, bg_selected_char.scale, bg_selected_char.color[1], bg_selected_char.color[2], bg_selected_char.color[3], bg_selected_char.alpha)
						elseif layer == 5 then
							for char_num, texture in ipairs(component.amount) do
								-- Jimmy
								if char_num == 1 then
									DrawTexture(
										texture.T,
										texture.pos[1], texture.pos[2],
										texture.scale * texture.aspectRatio, texture.scale,
										texture.color[1], texture.color[2], texture.color[3],
										texture.alpha
									)
								else
									-- Gary and Pete
									DrawTexture(
										texture.T,
										texture.pos[1], texture.pos[2],
										texture.scale * texture.aspectRatio, texture.scale,
											texture.fileName == "CHAR_3" and (GetPeteUnlocked() and 255 or 0) or (GetGaryUnlocked() and 255 or 0),
											texture.fileName == "CHAR_3" and (GetPeteUnlocked() and 255 or 0) or (GetGaryUnlocked() and 255 or 0),
											texture.fileName == "CHAR_3" and (GetPeteUnlocked() and 255 or 0) or (GetGaryUnlocked() and 255 or 0),
										texture.alpha
									)
								end
							end
						elseif layer == 6 then
							local wheel_char_outline = component.amount[GTAV_CHAR_SWITCH.char.lastSelected]
							DrawTexture(wheel_char_outline.T, wheel_char_outline.pos[1], wheel_char_outline.pos[2], wheel_char_outline.scale * wheel_char_outline.aspectRatio, wheel_char_outline.scale, wheel_char_outline.color[1], wheel_char_outline.color[2], wheel_char_outline.color[3], wheel_char_outline.alpha)
						else
							for __, texture in ipairs(component.amount) do
								DrawTexture(
									texture.T,
									texture.pos[1], texture.pos[2],
									texture.scale * texture.aspectRatio, texture.scale,
									texture.color[1], texture.color[2], texture.color[3],
									texture.alpha
								)
							end
						end
					elseif component.type == "text" then
						for __, text in pairs(component.amount) do
							for key, value in pairs(text.format) do
								if type(value) == "table" then
									_G["SetText" .. key](unpack(value))
								else
									_G["SetText" .. key](value)
								end
							end
							DrawText(text.statName)
						end
					elseif component.group == "stat_value" then
						for __, rectangle in ipairs(component.amount) do
							for i = 1, 2 do
								DrawRectangle(
									rectangle.pos[1], rectangle.pos[2],
									i == 1 and rectangle.size[1] or (rectangle.value[GTAV_CHAR_SWITCH.char.select]/100)*rectangle.size[1], rectangle.size[2],
									i == 1 and 0 or rectangle.color[1],
									i == 1 and 0 or rectangle.color[2],
									i == 1 and 0 or rectangle.color[3],
									rectangle.alpha
								)
							end
						end
					end
				end
			end

			-- To move camera
			if GTAV_CHAR_SWITCH.char.select ~= GTAV_CHAR_SWITCH.char.lastSelected then

				GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.lastSelected].pos = {PlayerGetPosXYZ()}

				local heights = {10, 40, 60}
				local char_pos = {PlayerGetPosXYZ()}
				local cam_pos = {PedGetOffsetInWorldCoords(gPlayer, math.random(2) == 1 and -math.random(2, 4) or math.random(2, 4), math.random(2) == 1 and -math.random(2, 4) or math.random(2, 4), 1)}
				local cam_pos_dest = {}
				local timer = GetTimer()

				-- Move camera up
				for i = 1, 3 do
					cam_pos_dest = {i == 1 and math.lerp(cam_pos[1], char_pos[1], 0.8) or cam_pos[1], i == 1 and math.lerp(cam_pos[2], char_pos[2], 0.8) or cam_pos[2], cam_pos[3] + heights[i]}
					timer = GetTimer()
					while DistanceBetweenPoints(cam_pos[3], cam_pos_dest[3]) >= 0.15 do
						Wait(0)

						if i == 1 then
							cam_pos[1], cam_pos[2] = math.lerp(cam_pos[1], cam_pos_dest[1], easing.outQuad((GetTimer()-timer)/15000)),
													math.lerp(cam_pos[2], cam_pos_dest[2], easing.outQuad((GetTimer()-timer)/15000))
						end
						cam_pos[3] = math.lerp(cam_pos[3], cam_pos_dest[3], easing.outQuad((GetTimer()-timer)/15000))
						CameraSetXYZ(cam_pos[1], cam_pos[2]-(i > 1 and 0.1 or 0), cam_pos[3], char_pos[1], char_pos[2], char_pos[3]+1)

						DrawRectangle(0, 0, 1, 1, 0, 0, 0, 150)
					end
					if i == 1 then
						cam_pos[1], cam_pos[2] = char_pos[1], char_pos[2]
					end
				end

				-- Move camera
				timer = GetTimer()
				PedSetFlag(gPlayer, 9, true)
				-- PedSetEffectedByGravity(gPlayer, false)
				-- PedSetUsesCollisionScripted(gPlayer, true)
				while DistanceBetweenCoords2d(cam_pos[1], cam_pos[2], GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.select].pos[1], GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.select].pos[2]) >= 0.05 do
					Wait(0)

					cam_pos[1], cam_pos[2] = math.lerp(cam_pos[1], GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.select].pos[1], easing.inOutQuad((GetTimer()-timer)/15000)),
											math.lerp(cam_pos[2], GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.select].pos[2], easing.inOutQuad((GetTimer()-timer)/15000))
					CameraSetXYZ(cam_pos[1], cam_pos[2]-0.1, cam_pos[3], cam_pos[1], cam_pos[2], 0)

					PlayerSetPosSimple(cam_pos[1], cam_pos[2], math.clamp(char_pos[3], char_pos[3], GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.select].pos[3]))

					DrawRectangle(0, 0, 1, 1, 0, 0, 0, 150)
				end

				PlayerSetPosSimple(GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.select].pos[1], GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.select].pos[2], GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.select].pos[3])
				-- PedSetEffectedByGravity(gPlayer, true)
				-- PedSetUsesCollisionScripted(gPlayer, false)
				PlayerSwapModel(GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.select].model)
				PedSetFlag(gPlayer, 9, false)
				PedSetActionTree(gPlayer, "/Global/Player", "Act/Player.act")
				PedSetAITree(gPlayer, "/Global/PlayerAI", "Act/PlayerAI.act")
				PedSetStatsType(gPlayer, GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.select].statType)
				PlayerSetPunishmentPoints(0)

				-- Move camera down
				for i = 3, 1, -1 do
					timer = GetTimer()
					cam_pos_dest[3] = i == 1 and GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.select].pos[3]+1 or cam_pos[3]-(DistanceBetweenPoints(GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.select].pos[3], cam_pos[3])*0.6)
					while DistanceBetweenPoints(cam_pos[3], cam_pos_dest[3]) >= 0.015 do
						Wait(0)

						cam_pos[3] = math.lerp(cam_pos[3], cam_pos_dest[3], easing.outQuad((GetTimer()-timer)/10000))
						CameraSetXYZ(cam_pos[1], cam_pos[2]-(i > 1 and 0.1 or 0), cam_pos[3], i > 1 and cam_pos[1] or GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.select].pos[1], i > 1 and cam_pos[2] or GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.select].pos[2], GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.select].pos[3]+1)

						DrawRectangle(0, 0, 1, 1, 0, 0, 0, 150)
					end
					if i == 2 then
						cam_pos[1], cam_pos[2] = GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.select].pos[1]+(math.random(2) == 1 and -math.randomrange(2, 4) or math.randomrange(2, 4)),
												GTAV_CHAR_SWITCH.char[GTAV_CHAR_SWITCH.char.select].pos[2]+(math.random(2) == 1 and -math.randomrange(2, 4) or math.randomrange(2, 4))
					end
				end
				GTAV_CHAR_SWITCH.char.lastSelected = GTAV_CHAR_SWITCH.char.select
				CameraReturnToPlayer()
			end

			for _, hud in ipairs({0, 4, 11}) do
				ToggleHUDComponentVisibility(hud, true)
			end
			UnpauseGameClock()
			for _, ped in {PedFindInAreaXYZ(0, 0, 0, 99999)} do
				if PedIsValid(ped) then
					PedOverrideStat(ped, 20, 100)
				end
			end
			PlayerLockButtonInputsExcept(false)
			GTAV_CHAR_SWITCH.active = false

		else
			-- Filter fade out
			if GTAV_CHAR_SWITCH.textures[1].amount[1].alpha > 0.1 then
				GTAV_CHAR_SWITCH.textures[1].amount[1].alpha = GTAV_CHAR_SWITCH.textures[1].amount[1].alpha - 5
				DrawRectangle(-0.1, -0.1, 1.1, 1.1, 0, 0, 0, GTAV_CHAR_SWITCH.textures[1].amount[1].alpha)
			end
		end

	end
end

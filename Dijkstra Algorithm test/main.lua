_G.math.huge = 1/0

local points = {
	active = false, s = 1,
	-- neighbor = { {vertexIndex, distanceFromCurrentVertexToIndex} }
	[1] = {227, 412, 4.63, neighbor = {
		{2},
	}},
	[2] = {293, 358, 3.22, neighbor = {
		{1},
		{3},
	}},
	[3] = {317, 294, 6.09, neighbor = {
		{2},
		{5},
	}},
	[4] = {322, 289, 6.16, neighbor = {
		{3},
		{5},
	}},
	[5] = {314, 288, 6.15, neighbor = {
		{16},
	}},
	[6] = {322, 278, 5.86, neighbor = {
		{4},
	}},
	[7] = {306, 245, 4.34, neighbor = {
		{6},
	}},
	[8] = {305, 220, 4.55, neighbor = {
		{7},
		{14},
		{21},
	}},
	[9] = {305, 190, 4.52, neighbor = {
		{8},
	}},
	[10] = {340, 150, 5.06, neighbor = {
		{9},
	}},
	[11] = {338, 142, 4.98, neighbor = {
		{10},
		{117},
	}},
	[12] = {333, 147, 5, neighbor = {
		{10},
		{11},
	}},
	[13] = {296, 184, 4.47, neighbor = {
		{12},
	}},
	[14] = {295, 220, 4.53, neighbor = {
		{8},
		{13},
	}},
	[15] = {300, 253, 4.72, neighbor = {
		{14},
	}},
	[16] = {312, 276, 5.79, neighbor = {
		{15},
	}},
	[17] = {372, 139, 4.71, neighbor = {
		{18},
		{125},
	}},
	[18] = {380, 150, 4.76, neighbor = {
		{19},
	}},
	[19] = {381, 198, 6.31, neighbor = {
		{20},
		{22},
		{25},
	}},
	[20] = {349, 199, 4.4, neighbor = {
		{19},
		{21},
	}},
	[21] = {330, 220, 4.67, neighbor = {
		{20},
		{100},
	}},
	[22] = {382, 250, 8.13, neighbor = {
		{24},
		{26},
		{100},
	}},
	[23] = {373.19, 299.48, 8.42, neighbor = {
		{164},
	}},
	[24] = {381, 290, 8.4, neighbor = {
		{23},
	}},
	[25] = {433.76, 200.08, 8.34, neighbor = {
		{19},
		{26},
	}},
	[26] = {435, 250, 9.82, neighbor = {
		{22},
		{25},
		{27},
	}},
	[27] = {454, 249, 10.31, neighbor = {
		{26},
		{28},
		-- {87},
		{164},
	}},
	[28] = {461, 303, 14.3, neighbor = {
		{27},
		{29},
	}},
	[29] = {442, 332, 16.29, neighbor = {
		{28},
		{30},
	}},
	[30] = {381, 352, 18.49, neighbor = {
		{29},
		{31},
	}},
	[31] = {371, 402, 20.17, neighbor = {
		{30},
		{32},
		{47},
	}},
	[32] = {364, 419, 20.9, neighbor = {
		{31},
		{33},
	}},
	[33] = {332, 430, 21.53, neighbor = {
		{32},
		{34},
	}},
	[34] = {318, 440, 21.66, neighbor = {
		{35},
	}},
	[35] = {310, 430, 21.85, neighbor = {
		{36},
		{37},
	}},
	[36] = {317, 423, 22.03, neighbor = {
		{33},
	}},
	[37] = {284, 401, 20.12, neighbor = {
		{38},
	}},
	[38] = {294, 372, 19.82, neighbor = {
		{37},
		{39},
	}},
	[39] = {334, 356, 15.38, neighbor = {
		{38},
		{40},
	}},
	[40] = {336, 340, 13.83, neighbor = {
		{39},
		{41},
	}},
	[41] = {345, 328, 13.18, neighbor = {
		{40},
		{42},
	}},
	[42] = {359, 327, 13.08, neighbor = {
		{41},
		{43},
	}},
	[43] = {360, 306, 8.43, neighbor = {
		{42},
	}},
	[44] = {360, 299, 8.11, neighbor = {

	}},
	[45] = {376, 306, 8.6, neighbor = {
		{46},
	}},
	[46] = {376, 348, 18.46, neighbor = {
		{45},
	}},
	[47] = {377, 428, 21.25, neighbor = {
		{31},
		{32},
		{48},
	}},
	[48] = {402, 463, 22.8, neighbor = {
		{47},
		{49},
	}},
	[49] = {404, 509, 21.86, neighbor = {
		{48},
		{50},
	}},
	[50] = {422, 519, 22.27, neighbor = {
		{49},
		{51},
	}},
	[51] = {477, 518, 19.78, neighbor = {
		{50},
		{52},
		{59},
	}},
	[52] = {513, 541, 23.86, neighbor = {
		{51},
		{53},
	}},
	[53] = {548, 529, 23.86, neighbor = {
		{52},
		{54},
	}},
	[54] = {554, 499, 19.89, neighbor = {
		{53},
		{55},
	}},
	[55] = {549, 479, 17.96, neighbor = {
		{54},
		{56},
		{60},
		{94},
	}},
	[56] = {534, 488, 18.84, neighbor = {
		{55},
		{57},
		{60},
	}},
	[57] = {533, 498, 19.61, neighbor = {
		{56},
		{58},
	}},
	[58] = {504, 510, 19.61, neighbor = {
		{57},
		{59},
	}},
	[59] = {490, 513, 19.7, neighbor = {
		{51},
		{58},
	}},
	[60] = {528, 474, 17.79, neighbor = {
		{55},
		{56},
		{61},
	}},
	[61] = {488, 471, 17.29, neighbor = {
		{60},
	}},
	[62] = {476, 428, 17.97, neighbor = {

	}},
	[63] = {488, 424, 17.16, neighbor = {
		{92},
	}},
	[64] = {472, 412, 17.35, neighbor = {

	}},
	[65] = {447, 394, 16.56, neighbor = {

	}},
	[66] = {439, 389, 17.22, neighbor = {

	}},
	[67] = {434, 397, 16.65, neighbor = {

	}},
	[68] = {431, 418, 17.36, neighbor = {

	}},
	[69] = {448, 430, 18.37, neighbor = {

	}},
	[70] = {444, 381, 16.56, neighbor = {

	}},
	[71] = {450, 367, 15.79, neighbor = {

	}},
	[72] = {448, 351, 15.67, neighbor = {

	}},
	[73] = {447, 341.01, 16.92, neighbor = {

	}},
	[74] = {420.01, 363, 16.25, neighbor = {

	}},
	[75] = {419, 375, 16.24, neighbor = {

	}},
	[76] = {430, 384, 16.76, neighbor = {

	}},
	[77] = {469, 331, 19.06, neighbor = {

	}},
	[78] = {486, 343, 17.08, neighbor = {
		{91},
	}},
	[79] = {478, 313, 20.1, neighbor = {

	}},
	[80] = {505, 308, 20.05, neighbor = {

	}},
	[81] = {508, 282, 20.04, neighbor = {

	}},
	[82] = {494, 269, 19.85, neighbor = {

	}},
	[83] = {478, 279, 19.89, neighbor = {

	}},
	[84] = {502, 267, 19.94, neighbor = {
		{85},
	}},
	[85] = {503, 263, 20.02, neighbor = {
		{84},
	}},
	[86] = {519, 259, 16.31, neighbor = {
		{85},
		{164},
	}},
	[87] = {539, 250, 16.46, neighbor = {
		{88},
		{164},
		{166},
	}},
	[88] = {539, 347, 16.75, neighbor = {
		{87},
		{90},
		{165},
	}},
	[89] = {528, 350, 16.52, neighbor = {
		{88},
		{165},
	}},
	[90] = {550, 351, 16.62, neighbor = {
		{144},
	}},
	[91] = {496, 353, 16.8, neighbor = {
		{78},
		{89},
	}},
	[92] = {496, 418, 16.79, neighbor = {
		{63},
		{91},
	}},
	[93] = {542, 422, 16.94, neighbor = {
		{92},
	}},
	[94] = {554, 427, 16.95, neighbor = {
		{55},
		{93},
	}},
	[95] = {568, 422, 16.95, neighbor = {
		{94},
	}},
	[96] = {588, 418, 16.95, neighbor = {
		{95},
	}},
	[97] = {588, 353, 15.49, neighbor = {
		{96},
	}},
	[98] = {376, 242, 7.78, neighbor = {
		{22},
		{99},
	}},
	[99] = {341, 241, 6.96, neighbor = {
		{98},
		{100},
		{101},
	}},
	[100] = {338, 224, 4.9, neighbor = {
		{21},
		{99},
	}},
	[101] = {340, 250, 6.87, neighbor = {
		{102},
	}},
	[102] = {345, 258, 6.47, neighbor = {
		{101},
		{104},
	}},
	[103] = {350, 266, 6.52, neighbor = {

	}},
	[104] = {328, 268, 5.86, neighbor = {
		{102},
	}},
	[105] = {355, 278, 7.72, neighbor = {

	}},
	[106] = {357, 292, 7.85, neighbor = {

	}},
	[107] = {349, 190, 4.6, neighbor = {

	}},
	[108] = {350, 178, 5.35, neighbor = {

	}},
	[109] = {342, 175, 5.32, neighbor = {

	}},
	[110] = {335, 167, 5.25, neighbor = {

	}},
	[111] = {358, 168, 5.68, neighbor = {

	}},
	[112] = {373, 167, 5.32, neighbor = {

	}},
	[113] = {387, 162, 5.78, neighbor = {

	}},
	[114] = {425, 160, 6.1, neighbor = {

	}},
	[115] = {428, 118, 5.45, neighbor = {

	}},
	-- zebra cross taman mini - toko, deket jembatan B-Vale
	[116] = {345, 140, 5.16, neighbor = {
		{17},
	}},
	[117] = {339, 131, 5, neighbor = {
		{116},
	}},
	[118] = {339.54, 100.45, 4.48, neighbor = {
		{117},
		{121},
	}},
	[119] = {340, 60, 6.72, neighbor = {
		{118},
	}},
	[120] = {341, 24, 5.01, neighbor = {
		{119},
	}},
	[121] = {349, 101, 4.96, neighbor = {
		{122},
	}},
	[122] = {394, 101, 5.24, neighbor = {
		{123},
	}},
	[123] = {394, 116, 5.31, neighbor = {
		{124},
	}},
	[124] = {394, 138, 5.17, neighbor = {

	}},
	[125] = {452, 76, 4.89, neighbor = {
		{126},
	}},
	[126] = {476, 75, 3.19, neighbor = {
		{125},
		{127},
	}},
	[127] = {481, 87, 4.66, neighbor = {
		{126},
		{128},
	}},
	[128] = {467, 137, 9, neighbor = {
		{127},
		{129},
	}},
	[129] = {481, 161, 9.42, neighbor = {
		{128},
		{130},
	}},
	[130] = {504, 162, 10.35, neighbor = {
		{129},
		{131},
	}},
	[131] = {511, 156, 12.21, neighbor = {
		{130},
		{132},
		{133},
	}},
	[132] = {530, 158, 14.69, neighbor = {
		{131},
		{166},
	}},
	[133] = {534, 105, 7.64, neighbor = {
		{131},
		{134},
	}},
	[134] = {548, 103, 7.45, neighbor = {
		{133},
		{135},
	}},
	[135] = {629, 129, 13.93, neighbor = {
		{134},
		{138},
	}},
	[136] = {639, 138, 15.07, neighbor = {
		{138},
		{139},
	}},
	[137] = {640, 127, 13.2, neighbor = {
		{138},
		{145},
	}},
	[138] = {635, 130, 14.1, neighbor = {
		{137},
	}},
	[139] = {663, 185, 16.01, neighbor = {
		{140},
	}},
	[140] = {654, 199, 16.03, neighbor = {
		{139},
		{141},
	}},
	[141] = {618, 236, 15.72, neighbor = {
		{140},
		{142},
	}},
	[142] = {606, 269, 15.64, neighbor = {
		{141},
		{143},
	}},
	[143] = {581, 297, 14.13, neighbor = {
		{142},
		{144},
	}},
	[144] = {577, 340, 15.96, neighbor = {
		{90},
		{97},
		{143},
	}},
	[145] = {648, 110, 8.73, neighbor = {
		{137},
		{146},
	}},
	[146] = {650, 88, 8.57, neighbor = {
		{145},
		{147},
	}},
	[147] = {641, 72, 8.57, neighbor = {
		{146},
		{148},
	}},
	[148] = {604, 43, 14.08, neighbor = {
		{147},
		{149},
	}},
	[149] = {585, 28, 11.04, neighbor = {
		{148},
	}},
	[150] = {572, 37, 11.99, neighbor = {
		{151},
		{167},
	}},
	[151] = {562, 74, 13.67, neighbor = {
		{150},
		{152},
	}},
	[152] = {552, 112, 11.99, neighbor = {
		{151},
		{153},
	}},
	[153] = {543, 147, 12.75, neighbor = {
		{152},
		{166},
	}},
	[154] = {329.21, 335.02, 12.65, neighbor = {

	}},
	[155] = {300, 334, 11.1, neighbor = {

	}},
	[156] = {231, 350, 3.8, neighbor = {

	}},
	[157] = {225, 336, 2.77, neighbor = {

	}},
	[158] = {280, 306, 2.88, neighbor = {

	}},
	[159] = {292, 287, 3.86, neighbor = {

	}},
	[160] = {302, 287, 6.27, neighbor = {

	}},
	[161] = {280, 253, 2.57, neighbor = {

	}},
	[162] = {279, 242, 4.62, neighbor = {

	}},
	[163] = {327.44, 298.13, 6.12, neighbor = {
		{3},
	}},
	[164] = {517.59, 249.48, 15.95, neighbor = {
		{27},
		{86},
		{87},
	}},
	[165] = {538.76, 350.37, 16.48, neighbor = {
		{90},
	}},
	[166] = {540.66, 160.08, 13.91, neighbor = {
		{87},
		{132},
		{153},
	}},
	[167] = {574.13, 26.08, 10.42, neighbor = {
		{149},
		{150},
	}},
	[168] = {554.20, 422.29, 16.95, neighbor = {
		{93},
		{94},
	}},
	[169] = {380.91, 232.01, 7.42, neighbor = {
		{22},
		{98},
	}},
}

-- Calculate distance
for i, v in ipairs(points) do
	for ii, vv in ipairs(v.neighbor) do
		if vv[1] then
			vv[2] = DistanceBetweenCoords3d(points[vv[1]][1], points[vv[1]][2], points[vv[1]][3], v[1], v[2], v[3])
		end
	end
end

function dijkstra(graph, startIdx, endIdx)
	local distances, visited, previous = {}, {}, {}

	-- node = index of array
	for node, _ in pairs(graph) do
		distances[node] = math.huge
		previous[node] = nil
	end
	distances[startIdx] = 0

	while not visited[endIdx] do
		local currentNode = nil
		local shortest_distance = math.huge
		for node, distance in pairs(distances) do
			if not visited[node] and distance < shortest_distance then
				currentNode = node
				shortest_distance = distance
			end
		end
		if not currentNode then
			break
		end
		visited[currentNode] = true
		for _, edge in ipairs(graph[currentNode].neighbor) do
			local neighbor, distance = edge[1], edge[2]
			local newDistance = shortest_distance + distance
			if newDistance < distances[neighbor] then
				distances[neighbor] = newDistance
				previous[neighbor] = currentNode
			end
		end
	end
	local path, currentNode = {}, endIdx
	while currentNode do
		table.insert(path, 1, currentNode)
		currentNode = previous[currentNode]
	end
	return path, distances[endIdx]
end

function CreateRoute(routeOrder)
	return function()
		local PX, PY, PZ = PlayerGetPosXYZ()
		local effect, blip
		local startIdx, endIdx = routeOrder[1], table.getn(routeOrder)
		for i, v in ipairs(routeOrder) do
			PX, PY, PZ = PlayerGetPosXYZ()
			effect = EffectCreate("RaceBeamFinal", points[v][1], points[v][2], points[v][3])
			blip = BlipAddXYZ(points[v][1], points[v][2], points[v][3], 0, 1)
			while DistanceBetweenCoords3d(PX, PY, PZ, points[v][1], points[v][2], points[v][3]) > 7 do
				Wait(0)
				PX, PY, PZ = PlayerGetPosXYZ()
			end
			SoundPlay2D("Erand")
			EffectKill(effect)
			BlipRemove(blip)
			if i == endIdx then
				TextPrintString("Anda sudah sampai di tempat tujuan.", 5, 1)
			end
		end
	end
end

function FindNearestPointFromPlayer(pointList)
	local X, Y, Z = PlayerGetPosXYZ()
	local nearestDist, nearestPoint, index = math.huge, nil, 1
	for i = 1, table.getn(pointList) do
		local dist = DistanceBetweenCoords3d(X, Y, Z, pointList[i][1], pointList[i][2], pointList[i][3])
		if dist < nearestDist then
			nearestDist = dist
			nearestPoint = pointList[i]
			index = i
		end
	end
	return nearestPoint, index
end

function main()
	while not SystemIsReady() do
		Wait(0)
	end

	local modulo = function(a, b)
		return a - math.floor(a/b)*b
	end
	local removeLastLine = function(filename)
		local file = io.open(filename, "r")
		local lines = {}
		for line in file:lines() do
			table.insert(lines, line)
		end
		file:close()
		table.remove(lines)
		file = io.open(filename, "w")
		file:write(table.concat(lines, "\n"))
		file:close()
	end
	local round = function(n)
		return modulo(n, 1) < 0.5 and math.floor(n) or math.ceil(n)
	end

	local x, y, z = 0, 0, 0
	local blip, rute = {}, {}
	local eff, nearPointIndex
	while true do
		Wait(0)
		-- Write to file
		if IsKeyBeingPressed("SLASH") then
			local FILE = io.open("_derpy_script_loader/scripts/dijkstra/output.txt", "a")
			local x, y, z = PlayerGetPosXYZ()
			-- x, y, z = round(x), round(y), round(z)
			x, y, z = string.format("%.2f", x), string.format("%.2f", y), string.format("%.2f", z)
			FILE:write('{' .. x .. ", " .. y .. ", " .. z .. "},\n")
			FILE:close()
		elseif IsKeyBeingPressed("BACKSLASH") then
			removeLastLine("_derpy_script_loader/scripts/dijkstra/output.txt")
		elseif IsKeyBeingPressed('O') then
			points.active = not points.active
			TextPrintString("SHOW NEAREST VERTEX = " .. tostring(points.active), 3, 1)
		end
		if points.active then
			x, y, z = PlayerGetPosXYZ()
			if not eff then
				for i = 1, table.getn(points), 1 do
					if DistanceBetweenCoords3d(x, y, z, points[i][1], points[i][2], points[i][3]) <= 7 then
						nearPointIndex = i
						break
					end
				end
				if nearPointIndex then
					eff = EffectCreate("GymFire", points[nearPointIndex][1], points[nearPointIndex][2], points[nearPointIndex][3])
					TextPrintString("points[" .. nearPointIndex .. "]", 300, 2)
				end
			else
				if not nearPointIndex or DistanceBetweenCoords3d(x, y, z, points[nearPointIndex][1], points[nearPointIndex][2], points[nearPointIndex][3]) > 7 then
					EffectKill(eff)
					eff = nil
					nearPointIndex = nil
					TextPrintString('', 0, 2)
				end
			end
			if IsButtonBeingPressed(0, 0) then
				points.s = points.s - 1 < 1 and table.getn(points) or points.s - 1
			elseif IsButtonBeingPressed(1, 0) then
				points.s = points.s + 1 > table.getn(points) and 1 or points.s + 1
			-- elseif IsButtonBeingPressed(3, 0) then
			-- 	PlayerSetPosSimple(points[points.s][1], points[points.s][2], points[points.s][3])
			elseif IsKeyBeingPressed('M') then
				TextPrintString("Dijkstra algorithm\ntest", 1.5, 1)
				Wait(1500)
				local coordsArrayXYZ, idx = FindNearestPointFromPlayer(points)
				CreateThread(CreateRoute(dijkstra(points, idx, 140)))
			end
			-- TextPrintString("points.s = " .. points.s .. "\n" .. points[points.s][1] .. ", " .. points[points.s][2] .. ", " .. points[points.s][3], 0, 1)
		end
	end
end

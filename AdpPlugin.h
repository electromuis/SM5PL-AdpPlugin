#pragma once

#include "config.hpp"
#include "global.h"
#include "PluginManager.h"
#include "MessageManager.h"

struct ButtonMapEntry {
	RString name;
	int player;
	int buttonNum;
	int sensorNum;
};

class AdpPlugin : public PluginBase {
public:
	AdpPlugin();
	~AdpPlugin();

	void Update(float fDeltaTime);
	std::vector<PluginRegType>* GetLuaFunctions();
	std::vector<ButtonMapEntry> ButtonMap();
};

return {

	baseType = 'device',

	name = 'Rain device',

	matches = function (device, adapterManager)
		local res = (device.deviceType == 'Rain')
		if (not res) then
			adapterManager.addDummyMethod(device, 'updateRain')
		end
		return res
	end,

	process = function (device, data, domoticz, utils, adapterManager)

		device['updateRain'] = function (rate, counter)
			device.update(0, tostring(rate) .. ';' .. tostring(counter))
		end

	end

}
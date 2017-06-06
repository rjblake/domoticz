return {

	baseType = 'device',

	name = 'Temperature device adapter',

	matches = function (device, adapterManager)
		local res = (device.deviceType == 'Temp')
		if (not res) then
			adapterManager.addDummyMethod(device, 'updateTemperature')
		end
		return res
	end,

	process = function (device, data, domoticz, utils, adapterManager)

		function device.updateTemperature(temperature)
			device.update(0, temperature)
		end

	end


}
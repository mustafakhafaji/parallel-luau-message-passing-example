local StarterPlayer = game:GetService('StarterPlayer')

local actor = script:GetActor()

function sendMessageBack(data: {})
	print(`{data}`)
	StarterPlayer.StarterPlayerScripts.Event:Fire({5, 10})
end

actor:BindToMessageParallel('sendToChild', sendMessageBack)

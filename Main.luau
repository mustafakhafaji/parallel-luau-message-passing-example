local ReplicatedStorage = game:GetService('ReplicatedStorage')
local StarterPlayer = game:GetService('StarterPlayer')

local parentActor = script:GetActor()

local childActor = Instance.new('Actor')
local childScript = ReplicatedStorage.Child:Clone()
childScript.Parent = childActor
childActor.Parent = script

task.defer(function()
	childActor:SendMessage('sendToChild', {3, 12})
end)

StarterPlayer.StarterPlayerScripts.Event.Event:Connect(function(data)
	print(data)
end)

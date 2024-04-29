local ReplicatedStorage = game:GetService('ReplicatedStorage')

local parentActor = script:GetActor()

local childActor = Instance.new('Actor')
local childScript = ReplicatedStorage.Child:Clone()
childScript.Parent = childActor
childActor.Parent = script

task.defer(function()
	childActor:SendMessage('sendToChild', parentActor)
end)

parentActor:BindToMessageParallel('sendToParent', function(data)
	print(data)
end)

local actor = script:GetActor()

function sendMessageBack(parentActor: Actor)
	print('Child received')
	parentActor:SendMessage('sendToParent', {5, 10})
end

actor:BindToMessageParallel('sendToChild', sendMessageBack)

local module = {}

function module.MobileRightClickStub(btn,callback)
    local IsOnMobile = table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform())
    if IsOnMobile then
        btn.MouseButton1Click:Connect(callback)
    end
end

return module

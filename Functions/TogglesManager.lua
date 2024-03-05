local OptionsManager = {}

-- Các tùy chọn mặc định
OptionsManager.defaultOptions = {
    getsaber = false,
    oneclick = false,
    lvlfarm = false,
    playerkill = false,
    secondsea = false,
    bypasstp = false,
    bringmob = false,
    fastattack = false,
    -- Thêm các tùy chọn khác nếu cần
}

-- Biến lưu trữ các tùy chọn hiện tại
OptionsManager.options = OptionsManager.defaultOptions

-- Hàm để thiết lập các tùy chọn
function OptionsManager:SetOption(name, value)
    if self.options[name] ~= nil then
        self.options[name]:SetValue(value)
    else
        warn("Option '" .. name .. "' does not exist.")
    end
end

-- Hàm để lấy giá trị của một tùy chọn
function OptionsManager:GetOption(name)
    if self.options[name] ~= nil then
        return self.options[name]
    else
        warn("Option '" .. name .. "' does not exist.")
        return nil
    end
end

-- Hàm để khôi phục các tùy chọn về giá trị mặc định
function OptionsManager:ResetOptions()
    self.options = self.defaultOptions
end

return OptionsManager

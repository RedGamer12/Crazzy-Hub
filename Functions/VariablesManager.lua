local VariableManager = {}

-- Bảng lưu trữ các biến và giá trị của chúng
VariableManager.variables = {}

-- Hàm để thiết lập giá trị cho một biến
function VariableManager:SetVariable(name, value)
    self.variables[name] = value
end

-- Hàm để lấy giá trị của một biến
function VariableManager:GetVariable(name)
    return self.variables[name]
end

-- Hàm để kiểm tra xem một biến có tồn tại không
function VariableManager:VariableExists(name)
    return self.variables[name] ~= nil
end

return VariableManager
--[[
    Nome      : Igor Matheus Andrade Torrente
    RA        : 169820
    Turma     : L
    Professor : Rafael Santos de O. Alves
]]--

require("comonfunc")

--calcula a proximo x para iteracao
function newtonx(x)
    return x  - Fx(x) / dFx(x)
end

function newton(currentX, error)
    local nextX = newtonx(currentX)
    local i  = 0

    while math.abs(nextX - currentX) > error and i ~= 10 do
        currentX = nextX
        nextX    = newtonx(nextX)
        i = i + 1
    end 
    io.write("Newton = interações: "..i)
    return nextX    
end
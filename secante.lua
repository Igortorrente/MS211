--[[
    Nome      : Igor Matheus Andrade Torrente
    RA        : 169820
    Turma     : L
    Professor : Rafael Santos de O. Alves
]]--

require("comonfunc")

--calcula o a tangente da secante
function tg(x1, x2)
    return (Fx(x2) - Fx(x1)) / (x2 - x1) 
end

--calcula a proximo x para iteracao
function secx(x1, x2)
    return x2 - Fx(x2) / tg(x1, x2)
end

--funcao de aproximacao pelo metodo da secante
function sec(currentX, nextX, error)
    --varivavel para evitar loop infinito caso haja divergencia
    local i  = 0
    local temp = nextX

    --loop de aproximacao
    repeat 
        nextX    = secx(currentX, nextX)
        currentX = temp
        temp = nextX

        i = i + 1
    until math.abs(nextX - currentX) < error and i ~= 10 
    io.write("Secane = interações: "..i)
    return nextX      
end

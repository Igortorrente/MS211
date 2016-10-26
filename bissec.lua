--[[
    Nome      : Igor Matheus Andrade Torrente
    RA        : 169820
    Turma     : L
    Professor : Rafael Santos de O. Alves
]]--

require("comonfunc")

--Verifica se os dois números tem o mesmo sinal
function sameSignal(a, b)
    return a * b > 0
 
end

function bissec(infRange, supRange, error)
    --calcula o x medio
    local media = (infRange + supRange) / 2
    local i = 0

    --loop de aproximacao
    while math.abs(supRange - infRange) >= error do 
        media = (infRange + supRange) / 2 
        local fm = Fx(media)
        
        if sameSignal(fm, Fx(supRange)) then
            supRange = media
        else
            infRange = media
        end
        i = i + 1
    end
    
    io.write("Bissec = interações: "..i)
    return media
end



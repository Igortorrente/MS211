--[[
    Nome      : Igor Matheus Andrade Torrente
    RA        : 169820
    Turma     : L
    Professor : Rafael Santos de O. Alves
]]--

--Variaveis da funcao
local N1 = 1698200
local N0 = 1000000
local V  = 50000

--calcula do y no x passado por parametro
function Fx(x)
    return math.exp(x) * (N0 + V / x) - V / x - N1
end

--calcula o y' no x passado por parametro
function dFx(x)
    return V*(math.exp(x) * (20*x^2 + x - 1) + 1 ) / x^2
end
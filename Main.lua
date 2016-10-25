--[[
    Nome      : Igor Matheus Andrade Torrente
    RA        : 169820
    Turma     : L
    Professor : Rafael Santos de O. Alves
]]--

require("secante")
require("newton")
require("bissec")

--[[ 
    funcao bissec recebe respectivamente intervalo inferior, superior
    e o erro desejado 
]]--

local iniAprox = bissec(-1.1, 2, 0.01)
print("  /  valor aprox: "..iniAprox)

--[[
    funcao newton recebe um aproximacao inicial e o erro desejado
]]--
print("  /  valor aprox: "..newton(iniAprox, 0.0000001))

--[[
    funcao secante recebe duas aproximacoes iniciais e o erro
]]--
print("  /  valor aprox: "..sec(0.39215754, iniAprox, 0.0000001))
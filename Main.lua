--[[
    Nome      : Igor Matheus Andrade Torrente
    RA        : 169820
    Turma     : L
    Professor : Rafael Santos de O. Alves
]]--

require("secante")
require("newton")
require("bissec")
require("comonfunc")

--variaveis dos erros
local bissecError = 0.01
local newtonError = 0.0000001
local secError    = 0.0000001
local bissecInf   = -1.1
local bissecSup   = 2
local secInf      = 0.39215754


print("Método   Iterações          X                 F(x)        ")
print("---------------------------------------------------------")

--[[ 
    funcao bissec recebe respectivamente intervalo inferior, superior
    e o erro desejado 
]]--
local bissecAprox, it = bissec(bissecInf, bissecSup, bissecError)
print(string.format( "Bissec %7d %21.13f %20.13f", it, bissecAprox, Fx(bissecAprox)))

--[[
    funcao newton recebe um aproximacao inicial e o erro desejado
]]--
local preciseAprox, it = newton(bissecAprox, newtonError)
print(string.format("Newton %7d %21.13f %20.13f", it, preciseAprox, Fx(preciseAprox)))

--[[
    funcao secante recebe duas aproximacoes iniciais e o erro
]]--
preciseAprox, it = sec(secInf, bissecAprox, secError)
print(string.format("Secante %6d %21.13f %20.13f", it, preciseAprox, Fx(preciseAprox)))

print("\nTempo de execução (s): " .. os.clock())

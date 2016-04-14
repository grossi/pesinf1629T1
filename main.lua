-- Modulo principal -- 
-- Interface do programa
-- Recebe o input de usuario e
--  ultiliza as funções dos
--  outros modulos para retornar
--  a taxa de crescimento

require "IOModule"
require "GrowthFunction"


print("Calculo de Crescimento")
print("Digite o mes inicial e final para a analise:")
local mesInicial, mesFinal = io.read("*n"), io.read("*n")

local custos, vendas = readAllMonths(mesInicial, mesFinal)

local crescimentoBruto, crescimentoLiquido = calculateTotalGrowth(custos, vendas)

local crescimentoLiquidoMes, crescimentoBrutoMes = {}, {}

local crescimentoLiquidoMes, crescimentoBrutoMes = calculateMensalGrowth(custos, vendas)

print("Crescimento Total Liquido: " .. string.format("%.2f",crescimentoLiquido*100).. "%")
print("Crescimento Total Bruto: " .. string.format("%.2f",crescimentoBruto*100) .. "%")

print("Crescimento Liquido/Bruto mensal:")
for k, v in ipairs(crescimentoLiquidoMes) do
	print(string.format("%.2f",crescimentoLiquidoMes[k]*100) .. " % / " .. string.format("%.2f",crescimentoBrutoMes[k]*100) .. "%")
end

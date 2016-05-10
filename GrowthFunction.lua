-- Gabriel Rossi & Marcos Rapoport --

-- Função do crescimento --
-- Modulo que contem a função usada
--  para avaliar o crescimento mensal

-- Função que recebe um vetor de custos
--  e um vetor de vendas e calcula
--  o crescimento total bruto e liquido
function calculateTotalGrowth(custos, vendas)

	-- Calcula o lucro de cada mes
	local lucros = {}
	for k, v in ipairs(custos) do
		lucros[k] = vendas[k] - custos[k]
	end

	-- Calcula o crescimento total bruto e liquido
	local crescimentoBruto = (vendas[#vendas] - vendas[1])/ vendas[1]
	local crescimentoLiquido = (lucros[#lucros] - lucros[1])/ lucros[1]

	return crescimentoLiquido, crescimentoBruto

end


-- Função que recebe um vetor de custos e
--  um vetor de vendas e calcula o
--  crescimento mensal bruto e liquido
function calculateMensalGrowth(custos, vendas)

	-- Calcula o lucro de cada mes
	local lucros = {}
	for k, v in ipairs(custos) do
		lucros[k] = vendas[k] - custos[k]
	end


	-- Calcula para cada mes o crescimento
	--  bruto e liquido
	local crescimentoLiquidoMes = {0}
	local crescimentoBrutoMes = {0}
	for i = 2, #vendas do
		crescimentoBrutoMes[i] = (vendas[i] - vendas[i-1])/vendas[i-1]
		crescimentoLiquidoMes[i] = (lucros[i] - lucros[i-1])/lucros[i-1]
	end

	return crescimentoLiquidoMes, crescimentoBrutoMes

end

-- I/O Module --
-- Modulo de leitura e escrita do programa

-- Le os valores de um mes e retorna a soma dos gastos
--  e das vendas 
function  readMonth(fileName)
	local vendas, gastos = 0, 0


	local file = io.open(fileName, "r")

	-- A primeira linha do arquivo são os gastos
	gastos = file:read()

	-- Verifica se o arquivo é valido
	if not gastos then
		file:close()
		return -1 
	end

	while true do
		local venda = file:read()

		if not venda then break end
		vendas = venda + vendas
	end


	file:close()

	return gastos, vendas
end


-- Usa a readMonth para ler todos os meses mes inicial 
--  mes final, armazena os gastos e vendas em um vetor
--  e os retorna 
function readAllMonths(mesInicial, mesFinal)
	local mes 
	local gastos, vendas = {}, {}

	for mes = mesInicial, mesFinal do
		gastos[mes], vendas[mes] = readMonth("mes " .. mes .. ".txt")
	end

	return gastos, vendas
end

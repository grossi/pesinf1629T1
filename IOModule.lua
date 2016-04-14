-- I/O Module --
-- Modulo de leitura e escrita do programa

-- Le os valores de um mes e retorna a soma dos gastos
--   e das vendas 
function  readMonth(fileName)
	local vendas, gastos = 0, 0


	file = io.open(fileName, "r")

	-- A primeira linha do arquivo são os gastos
	gastos = io.read(fileName)

	-- Verifica se o arquivo é valido
	if not gastos then
		io.close(fileName)
		return -1 
	end

	while true do
		local venda = io.read(fileName)

		if not venda then break end
		vendas = venda + vendas
	end


	io.close(fileName)

	return gastos, vendas
end

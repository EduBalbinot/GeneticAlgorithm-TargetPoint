function populacao = populacaoInicial(tamanho, bits)
    populacao = [];
    for i = 1:tamanho
        populacao = [populacao; logical(randi([0, 1], 1, bits))];
    end
return
end
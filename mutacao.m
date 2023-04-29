function populacao = mutacao(populacao, N_mutacoes, bits)
    for i= 1:N_mutacoes
      r1 = randi([1 length(populacao)]);
      r2 = randi([1 bits]);
      populacao(r1,r2)=~populacao(r1,r2);
    end
return
end
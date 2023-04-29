clear, clc
N_pop = 20;
bits = 8;
geracoes = 0;
apt = [];
mdApt = 0;
tg= 0;

populacao = populacaoInicial(N_pop, bits);
aptidao = funcaoAptidao(populacao, tg);

while mdApt<=0.9
  reprodutores = selecaoNaturalTorneio(populacao, aptidao);
  populacao = crossover(reprodutores, bits);
  populacao = mutacao(populacao, 2 , bits);
  aptidao = funcaoAptidao(populacao, tg);
  mdApt = sum(aptidao)/length(aptidao);
  apt=[apt ;geracoes mdApt];
  geracoes = geracoes + 1;
end

populacao
geracoes = geracoes - 1
plot(apt(:,1), apt(:,2))
xlim([0 geracoes])
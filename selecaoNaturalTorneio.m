function reprodutores = selecaoNaturalTorneio(populacao, aptidao)
  reprodutores = [];
  for i = 1:length(populacao)
    r1 = randi([1 length(populacao)]);
    r2 = randi([1 length(populacao)]);
    if aptidao(r1) > aptidao(r2)
      reprodutores = [reprodutores; populacao(r1,:)];
    else
      reprodutores = [reprodutores; populacao(r2,:)];
    end
  end
return
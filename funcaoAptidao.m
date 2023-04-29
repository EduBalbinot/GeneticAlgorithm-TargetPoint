function aptidao = funcaoAptidao(populacao, tg)
  aptidao = [];
  for i = 1:length(populacao)
    aptidao(i) = 1/(1+((bi2de(populacao(i,:))-tg)^2))
  end
return
end

% 1/(1+((bi2de([1 0 1  0 0 0 0])-5)^2))
% 1/(1+(0^2))
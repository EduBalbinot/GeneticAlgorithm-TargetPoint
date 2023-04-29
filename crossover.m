function novaGeracao = crossover(reprodutores, bits)
  novaGeracao = [];
  for i = 1:length(reprodutores)/2
      mascara = logical(randi([0, 1], 1, bits));
      r1 = randi([1 length(reprodutores)]);
      r2 = randi([1 length(reprodutores)]);
      for j = 1:bits
          if mascara(j)
              f1(j)=reprodutores(r1,j);
              f2(j)=reprodutores(r2,j);
          else
              f1(j)=reprodutores(r2,j);
              f2(j)=reprodutores(r1,j);
          end
      end
      novaGeracao = [novaGeracao; f1 ; f2];
  end
return
end
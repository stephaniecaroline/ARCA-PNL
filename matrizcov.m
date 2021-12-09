function [Q] = matrizcov(A)
  [L,C] = size(A); 
  X = zeros(C,1);
  Q = zeros(C);
  
  for i = 1:C
    for j = 1:C
      if j>i
        y = A(:,i);
        z = A(:,j);
        Q(i,j) = cov(y,z)*(L-1)/L;
        Q(j,i) = Q(i,j);
      elseif j==i
        Q(i,j) = var(A(:,i))*(L-1)/L;
      endif
    endfor
  endfor
endfunction

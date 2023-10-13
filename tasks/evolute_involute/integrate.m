function int = integrate (x, y, a, t)
  f = @(w) sqrt(derivative(y,w).^2 + derivative(x,w).^2);
  for i=1:length(t)
    int(i) = integral(f, a, t(i));
  endfor
endfunction
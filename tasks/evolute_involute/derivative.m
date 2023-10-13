function dfdt = derivative (f, t1)
  eps = 0.00001;
  two_eps = 0.00002;
  dfdt = f(t1 + eps) ./ two_eps - f(t1 - eps) ./ two_eps;
endfunction

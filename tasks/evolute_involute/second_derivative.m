function d2fdt2 = second_derivative (f, t)
  %eps = 0.00000001;
  eps = 0.00001;
  two_eps = 0.00002;
  d2fdt2 = derivative(f, t + eps) / two_eps - derivative(f, t - eps) / two_eps;
endfunction

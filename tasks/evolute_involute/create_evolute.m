function [X, Y] = create_evolute (x, y, t1, t2)
  t = t1:0.1:t2;
  diff = derivative(x,t).*second_derivative(y,t) - second_derivative(x,t).*derivative(y,t);
  norm_squared = derivative(x,t).^2 + derivative(y,t).^2;
  X = x(t) - (derivative(y,t) .* norm_squared) ./ diff;
  Y = y(t) + (derivative(x,t) .* norm_squared) ./ diff;
endfunction

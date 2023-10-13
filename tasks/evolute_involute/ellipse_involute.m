function retval = ellipse_involute (a, b, t1, t2)
  set(gca, 'xlim',[-10 10],'ylim', [-10 10]);
  axis equal;
  t = t1:0.05:t2;
  x = @(t) a*cos(t);
  y = @(t) b*sin(t);
  hold on;
  plot(x(t),y(t),'LineWidth',2,'Color',[0,0,1]);

  tmod = @(t) mod(t, 2*pi);
  norm = sqrt(derivative(x,t).*derivative(x,t) + derivative(y,t).*derivative(y,t));
  int = integrate(x, y, t1, t);
  X = x(tmod(t)) - (int .* derivative(x,tmod(t))) ./ norm;
  Y = y(tmod(t)) - (int .* derivative(y,tmod(t))) ./ norm;

  plot([X(1), X(2)],[Y(1), Y(2)],'LineWidth',4,'Color',[1,0,0]);
  pause(0.1);
  for i = 2:length(X)
    plot([X(i-1), X(i)],[Y(i-1), Y(i)],'LineWidth',2,'Color',[0,1,0]);
    pause(0.01);
  endfor
endfunction

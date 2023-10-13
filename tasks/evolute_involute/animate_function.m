function retval = animate_function (x, y, t1, t2)
  set(gca, 'xlim',[-10 10],'ylim', [-10 10]);
  axis equal;
  t = t1:0.01:t2;
  hold on;
  plot(x(t),y(t),'LineWidth',2,'Color',[0,0,1]);

  [X,Y] = create_evolute(x, y, t1, t2);
  [X1,Y1] = create_involute(x, y, t1, t2);

  plot([X(1), X(2)],[Y(1), Y(2)],'LineWidth',4,'Color',[1,0,0]);
  pause(0.1);
  for i = 2:length(X)
    #if (abs(X(i-1)-X(i)) > 0.0005 || abs(Y(i-1)-Y(i)) > 0.0005)
      #plot([X(i-1), X(i)],[Y(i-1), Y(i)],'LineWidth',2,'Color',[1,0,0]);
      #pause(0.01);
    #endif

    plot([X1(i-1), X1(i)],[Y1(i-1), Y1(i)],'LineWidth',2,'Color',[0,1,0]);
    pause(0.01);
  endfor
endfunction

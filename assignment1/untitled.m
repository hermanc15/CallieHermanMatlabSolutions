x = -2*pi:1:2*pi;
y = sin(x)
title('title')
xlabel('something')
ylabel('somethingelse')
grid('on')
legend('1st line', '2nd line')
plot(x, sin(x), '--dy')
subplot(2,1,1)
plot(x, sin(x))
subplot(2,1,2)
plot(x, cos(x))
print -djpeg figure.jpeg




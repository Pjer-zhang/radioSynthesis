clear
close all

syms x

sp1 = dirac(x-1)+dirac(x-3)+dirac(x-5)+dirac(x-7)...
    +dirac(x+1)+dirac(x+3)+dirac(x+5)+dirac(x+7);
sp2 = 0.8*dirac(x-1)+0.6*dirac(x-3)+0.4*dirac(x-5)+0.2*dirac(x-7)...
    +0.8*dirac(x+1)+0.6*dirac(x+3)+0.4*dirac(x+5)+0.2*dirac(x+7);

Fw1 = fourier(sp1);
Fw2 = fourier(sp2*2);
subplot(321)
stem(-7:2:7,ones(1,8)), grid on
ylim([0 1.5])
xlabel('x')
subplot(323)
fplot(real(Fw1),[-1.5*pi 1.5*pi]),grid on
ylim([-8 8])
xlabel('\theta')
subplot(325)
func_Fw1 = matlabFunction(Fw1);
polarplot(-pi:0.001:pi,func_Fw1(-pi:0.001:pi));

subplot(322)
stem(-7:2:7,[0.2 0.4 0.6 0.8 0.8 0.6 0.4 0.2]*2), grid on
ylim([0 2])
xlabel('x')
subplot(324)
fplot(real(Fw2),[-1.5*pi 1.5*pi]),grid on
ylim([-8 8])
xlabel('\theta')
subplot(326)
func_Fw2 = matlabFunction(Fw2);
polarplot(-pi:0.001:pi,func_Fw2(-pi:0.001:pi));

set(gcf,'position',[77   291   418   492])
print('fourier.png','-dpng','-r700')
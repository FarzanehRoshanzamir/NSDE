%%%%%%% Farzaneh Roshanzamir %%%%%%%
%%%%%%%%%%% Heun Method %%%%%%%%%%%%

% x' = my_func(x,t); Define your differential equation as a function in my_func.m
% x belongs to [a,b]; Set 'a' and 'b' in the Inputs part
% 'alpha' is the initial value for x(0)
% 'h' is the step size
% 'x_Exact' is the exact solution for the equation; To compare the results, uncomment the other parts with your exact solution

close all;
clear all;
%***********Inputs**************
a=0;
b=1;
n=10;
h=0.1;
alpha=1/3;
%*******************************
t=a:h:b;
x=zeros(1,n+1);
e=zeros(1,n+1);
%**********Heun Method**********
for i=1:n
    x(i+1) = x(i)+h/4*(my_func(x(i),t(i))+3*my_func(x(i)+(2*h/3)*my_func(x(i),t(i)),t(i)+2*h/3));
end
x_Heun = x;
%********Exact Results**********
% for i=1:n
%     e(i)=t(i)^2;
% end
% x_Exact = e + 1/3*exp(-5*t);
%**************Errors***********
% Error = abs(x_Exact-x_Heun);
%********Display Results********
% disp([t; x_Heun; x_Exact; Error]')
%*********Plot Results**********
% hold on
% plot(x_Heun);
% plot(x_Exact);
% hold off

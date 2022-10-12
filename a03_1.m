%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : a03_1.m                                                     %
% Discription  : To find the positive solution of equation e^x+10x-x=0 using %
%                Bisection method,and the error is required to be less than  %
%                0.5*10^-4.                                                  %
% Environment  : Matlab                                                      %
% Author       : Junhang Deng                                                %
% Copyright (c): 2022 Junhang Deng                                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

clc;
close all;
clear all;

a = 0;
b = 1;
ee = 0.00005;
fa = exp(a) + 10 * a - 2;
fb = exp(b) + 10 * b - 2;
k = 0;
while( fa * fb < 0 )
    k = k + 1;
    x = 0.5 * ( a + b );
    fx = exp(x) + 10 * x - 2;
    
    if( fx * fa < 0 )
        a = a;
        b = x;
    else
        a = x;
        b = b;
    end
    if( abs( a - b ) < ee )
        break;
    end
end

x = 0.5 * (a + b);
x
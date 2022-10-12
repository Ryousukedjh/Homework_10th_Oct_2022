%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : a01.m                                                     %
% Discription  : To find the positive solution of equation x^2-x-1=0 using %
%                Bisection method,and the error is required to be less than%
%                0.05.                                                     %
% Environment  : Matlab                                                    %
% Author       : Junhang Deng                                              %
% Copyright (c): 2022 Junhang Deng                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

clc;
close all;
clear all;

a = 1;
b = 2;
e = 0.05;
fa = a^2 - a - 1;
fb = b^2 - b - 1;
k = 0;
while( fa * fb < 0 )
    k = k + 1;
    x = 0.5 * ( a + b );
    fx = x^2 - x - 1;
    
    if( fx * fa < 0 )
        a = a;
        b = x;
    else
        a = x;
        b = b;
    end
    if( abs( a - b ) < e )
        break;
    end
end

x = 0.5 * (a + b);
x
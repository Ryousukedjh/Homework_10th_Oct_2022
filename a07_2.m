%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : a07_2.m                                                             %
% Discription  : To find the solution close to 2 of equation x^3-3x-1=0 using        %
%                Secant method,and the error is required to be less than 0.5*10^-3.  %
%                The exact solution is 1.87938524...                                 %
% Environment  : Matlab                                                              %
% Author       : Junhang Deng                                                        %
% Copyright (c): 2022 Junhang Deng                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

clc;
close all;
clear all;

x0 = 2;
x1 = 1.9;
ee = 0.5*10^-3;
k = 0;
xx = 1.87938524;
x2 = 0;

while(1)       
    k = k + 1;
    x2 = (x1^2 * x0 + x0^2 * x1 + 1)/(x1^2 + x1 * x0 + x0^2 - 3);
    
    if( abs( x2 - xx ) < ee )
        break;
    end
    x0 = x1;
    x1 = x2;
    
end
x2

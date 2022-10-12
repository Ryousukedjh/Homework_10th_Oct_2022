%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : a07_1.m                                                             %
% Discription  : To find the solution close to 2 of equation x^3-3x-1=0 using        %
%                Newton's method,and the error is required to be less than 0.5*10^-3.%
%                The exact solution is 1.87938524...                                 %
% Environment  : Matlab                                                              %
% Author       : Junhang Deng                                                        %
% Copyright (c): 2022 Junhang Deng                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

clc;
close all;
clear all;

x0 = 2;
ee = 0.5*10^-3;
k = 0;
x = x0;
xx = 1.87938524;

while( 1 )
    k = k + 1;
    x = x - ( x^3 - 3 * x - 1)/( 3 * x^2 - 3 )
    if( abs( x - xx ) < ee )
        break
    end
end
x
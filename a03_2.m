%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : a03_2.m                                                     %
% Discription  : To find the positive solution of equation e^x+10x-x=0 using %
%                Iterative method,and the error is required to be less than  %
%                0.5*10^-4.                                                  %
% Environment  : Matlab                                                      %
% Author       : Junhang Deng                                                %
% Copyright (c): 2022 Junhang Deng                                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

clc;
close all;
clear all;

a = 0;
b = 0.5;
x0 = 0;
k = 0;
ee = 0.00005;
x = 0.1 * (2 - exp(x0) );
kk = ( log( 4 * 0.0001 )/log( 0.2 ) );

while( abs( x - x0 ) > ee )
    k = k + 1;
    x = 0.1 * ( 2 - exp(x) );
    if(k >= kk)
        break;
    end
end
x


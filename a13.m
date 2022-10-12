%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : a13.m                                                               %
% Discription  : To compute the exact valve of 155^0.5,and the error is required to  %
%                be less than 0.5*10^-3                                              %
% Environment  : Matlab                                                              %
% Author       : Junhang Deng                                                        %
% Copyright (c): 2022 Junhang Deng                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

clc;
close all;
clear all;

x0 = 10;
ee = 0.5*10^-3;
k = 0;
x = x0;
xx = 10.72380529;

while( 1 )
    k = k + 1;
    x = x - ( 1 - ( 115/x^2) )/( 230/x^3 )
    if( abs( x - xx ) < ee )
        break
    end
end

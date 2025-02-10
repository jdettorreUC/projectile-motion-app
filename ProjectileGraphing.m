% Projectile Graphing Function
% File: Displacement_mihlbabt.m
% Date: 09 October 2024
% By: Brett Mihlbachler, M12310444
%
% Section: 002
% Team: 2
%
% ELECTRONIC SIGNATURE (if team assignment, include all members info)
% Brett Mihlbachler
%
% The electronic signature above indicates that I
% have a general understanding of all aspects of its
% development and execution.
%
% This function is to use the base input values of initial velocity, launch
% angle, and gravity to then produce X and Y arrays for graphing the motion
% as well as providing the Xmax (or total horizontal distance traveled),
% the Ymax (or maximum height reached), and Tmax (or the total time the
% projectile is in motion).
%
% Reference all sources used (including any AI):N/A
%


function [X,Y,Xmax,Ymax,Tmax] = ProjectileGraphing(v,theta,g)
% @@@@@ THETA MUST BE LESS THAN 90 @@@@@

Xmax = (2*v^2*sind(theta)*cosd(theta))/g;
X = linspace(0,Xmax,100);
for k = 1:100
    Y(k) = (X(k)*tand(theta))-((g*X(k).^2)/(2*v^2*cosd(theta)^2));
end

Ymax = max(Y);
Tmax = 2*((v*sind(theta))/g);

end
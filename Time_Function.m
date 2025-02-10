function [time] = Time_Function(IV,ang,g)
    time = 2 * IV * sin(deg2rad(ang)) / g;
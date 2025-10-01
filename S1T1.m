%% S1.T1 (a) – Single box plot (Cycle & Pedestrian)
clc; close all;

T = readtable('Cycle_and_pedestrian data.csv');

vals = [ ...
    T.("Eleanor Schonell Bridge, St Lucia Cyclist"), ...
    T.("Eleanor Schonell Bridge, St Lucia Pedestrian"), ...
    T.("Jack Pesch Bridge, Indooroopilly Cyclist"), ...
    T.("Jack Pesch Bridge, Indooroopilly Pedestrian")];

labels = {'ESB – Cyclists','ESB – Pedestrians','JPB – Cyclists','JPB – Pedestrians'};

figure('Color','w');
boxplot(vals, 'Labels', labels, 'Whisker', 1.5);
ylabel('Daily count');
title('Daily bikeway usage (2022) – Box plot');
grid on; set(gca,'XTickLabelRotation',10);  % small tilt for readability

% OPTIONAL evidence file:
% saveas(gcf,'S1T1a_boxplot.png');

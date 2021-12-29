% Author NguyenVu
% Date 11/07/2021
clc;
clear;
close all;

% Load data from the source
load Project_5_Data

% Estimate PMF using the relative frequency approach
resultFreq = CalcRelFreq(userData);

% Alpha value is the average of the distribution (over a 5 second interval)
alphaVal = mean(userData)

% New alphaVal in a one second interval
newAlphaVal = alphaVal/5

% Max value of the data 
maxValue = max(userData);

% Estimate PMF using the Poisson PMF random variable
resultPoisson = CalcPoissonPMF(alphaVal,maxValue);

% Estimate PMF using the Poisson PMF random variable based on the new alpha
%resultPoisson = CalcPoissonPMF(newAlphaVal,maxValue);


% Turn the row vector into the column vector
resultFreq = resultFreq.';
resultPoisson = resultPoisson.';

% The range of the PMF start from 0 to max value of userData (17)
x = 0:maxValue;

% Plot both PMF's on a single bar graph using bar function
bar(x,[resultFreq;resultPoisson])

%Title
title('Probability Mass Function');

% Label axes
xlabel('Number of users (x)');
ylabel('Probability P(x)');

% Label dataset
legend('Relative Frequency', 'Poisson PMF');




% The function take the input alpha and max value of userData
% The output will be a PMF calculated using the Poisson PMF at 
% points 0,1... max value of data(17)
% The output will be presented under the matrix 18x1

function[PoissonPMF] = CalcPoissonPMF(alphaHat, maxVal)

% Initialize the output matrix with value 0
% The matrix should have the size is (max value + 1) because the range of 
% the Poisson PMF starts from 0
PoissonPMF = zeros(maxVal+1,1);

for ii = 1:length(PoissonPMF)
    % The range of Poisson PMF starts from 0 and the index of matrix starts
    % from 1, so x will start from index - 1
    x = ii-1;
    % The fomula to calculate the probability of each value by the Poisson PMF
    PoissonPMF(ii,1) = ((alphaHat^x)* exp(-alphaHat))/factorial(x);
end
end
    
    
% The function will take the userData which is a matrix 20x1
% The output will be a PMF calculated using the relative frequency approach
% The output will be presented under the matrix 18x1 because 
% the range of the PMF is the values 0, 1, ..., maxValue of data (17)

function [RelFrePMF] = CalcRelFreq(inputData) 
% Determine number of rows of data input
numRow = size(inputData,1);

%Initilize a matrix (20x1) with value 0
relFreCal = zeros(numRow,1);

%Use the nested loop to get the occurences of the number of users in data
for ii = 1 : numRow
    for jj = 1 : numRow
        % The number of users start from 0 and the index start from 1 
        % therefore, we will look for the number of users from (index - 1)
        if(inputData(jj) == ii-1)
            % increment the number of occurences of number of users
            relFreCal(ii) = relFreCal(ii) + 1;
        end
    end
end

% Calculate the Probablity base on the relative frequency
relFreCal = relFreCal./numRow;

% max value of data
maxVal = max(inputData);

% min value of data
minVal = 0;

% Range of data start from 0 to max value is same as index start from 1 to
% (maxValue + 1)
range = (maxVal-minVal)+1;

% Initialize the output of function (the matrix 18x1)
RelFrePMF = zeros(range,1);

% Move the calculated probability to the output matrix 
for ii = 1 : range
    RelFrePMF(ii) = relFreCal(ii);
end

end


% Plot the training data points x and y into a new figure and
% gives the figure axes labels of population and profit.
%
% Population and revenue data have been passed in as the x
% and y arguments of this function.

function plotData(x, y)

figure;
plot(x, y, 'rx', 'MarkerSize', 10);      % Plot the data
ylabel('Profit in $10,000s');            % Set the y−axis label
xlabel('Population of City in 10,000s'); % Set the x−axis label

end

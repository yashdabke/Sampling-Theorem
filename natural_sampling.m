% Natural/Critical Sampling

% Get the first and second frequencies as input from the user
f1 = input("enter f1:");
f2 = input("enter f2:");

% Determine the maximum frequency and Nyquist frequency
fm = max(f1, f2);
fnyq = 2 * fm;

% Set the sampling frequency to the Nyquist frequency
fs = fnyq;

% Calculate the sampling interval
ts = 1 / fs;

% Create a time vector for continuous time
tc = 0:1e-6:(40 * ts);

% Generate the continuous time signal by summing two cosines
xc = cos(2 * pi * f1 * tc) + cos(2 * pi * f2 * tc);

% Create a time vector for discrete time
td = 0:ts:(40 * ts);

% Generate the discrete time signal by summing two cosines
xd = cos(2 * pi * f1 * td) + cos(2 * pi * f2 * td);

% Determine the length of the discrete time signal
N = length(td);

% Create an array of indices
n = 0:(N - 1);

% Initialize an array for the reconstructed signal
xr = zeros(size(tc));

% Initialize a matrix to store sinc functions for each sample
sinc_train = zeros(N, length(tc));

% Loop through each sample and create corresponding sinc function
for n = 0:(N - 1)
    % Generate a sinc function centered at the current sample
    sinc_train((n + 1), :) = sinc((tc - (n * ts)) / ts);
    
    % Compute the current contribution to the reconstructed signal
    current_sinc = xd(n + 1) * sinc_train((n + 1), :);
    
    % Add the current contribution to the reconstructed signal
    xr = xr + current_sinc;
end

% Plot the original continuous signal, sampled signal, and reconstructed signal
figure(1);
hold on;
grid on;
plot(tc, xc, 'b', 'linewidth', 2)
stem(td, xd, 'k', 'linewidth', 2)
plot(tc, xr, 'r', 'linewidth', 2)

% Add legend, labels, and title
legend('Continuous Time Signal', 'Discrete Time Signal', 'Recovered Time Signal');
xlabel('Time');
ylabel('Amplitude');
title('Naturally Sampled');

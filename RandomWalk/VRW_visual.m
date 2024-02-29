VRW = 0.049; % fps/sqrt(hr)
VRW = VRW * 0.3048;  % m/s/sqrt(hr)

time = 1; % hours
dt_hr = 0.01;  % step in hours

% Number of time steps
steps = time / dt_hr;

white_noise = randn(1, num_steps);

vrw = cumsum(white_noise .* sqrt(VRW * dt_hr)); % Cumulative sumation

vrw = vrw * sqrt(time);

time_hr = linspace(0, total_time_hr, steps);

disp_m = cumtrapz(vrw) * dt_hr; % Cumulative trapezoid integration method

figure(1), clf
plot(time_hr, vrw);
xlabel('Time (hours)');
ylabel('Position (meters)');
title('Velocity Random Walk (VRW) Process');
grid on;
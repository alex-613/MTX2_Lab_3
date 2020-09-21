clear

%% Open loop control of a DC motor

loadOL = 0.1:0.1:1;
SpeedOL = [4.645 4.598 4.511 4.504 4.457 4.41 4.363 4.316 4.269 4.211];

plot(loadOL,SpeedOL)
title('Motor speed with manunal control')
xlabel('Torque(Nm)')
ylabel('motor speed(V)')

%% Closed loop control of a DC motor

loadCL = 1:4;
SpeedCL40 = [4.86 4.85 4.83 4.82];

SpeedCL100 = [4.94 4.93 4.93 4.92];

SpeedCL400 = [4.98 4.97 4.97 4.97];

SpeedCL800 = [4.97 4.97 4.97 4.97];

plot(loadCL, SpeedCL40)
hold on

plot(loadCL, SpeedCL100)

plot(loadCL, SpeedCL400)

plot(loadCL, SpeedCL800)

title('Motor speed with proportional feedback control')
xlabel('Torque(Nm)')
ylabel('motor speed(V)')
legend('Kp = 40','Kp = 100', 'Kp = 400', 'Kp = 800')
hold off


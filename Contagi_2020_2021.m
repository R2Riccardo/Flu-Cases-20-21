%% CONTAGI ANNO 2020/2021
z = linspace( 1,28,1000);
x = [1:28];
y = [1.33 1.73 1.93 2.04 1.93 1.84 1.68 1.54 1.39 1.42 1.25 1.30 1.35 1.41 1.41 1.53 1.49 1.58 1.64 1.62 1.56 1.39 1.16 0.99 0.9 0.86 0.85 0.85];

pz = interp1(x,y,z); %approssimazione lineare a tratti

figure(1) 
plot (z,pz,'b','LineWidth',2)
grid on
xlabel ( 'Settimane')
ylabel ( 'Tasso di contagio')
title ('Approssimazione lineare a tratti')

P = polyfit ( x,y,6); %approssimo nel senso dei minimi quadrati con un polinomio di grado 2
P_val = polyval ( P,z);

figure (2)
plot(z,P_val,'g','LineWidth',2)
grid on
xlabel('Settimane')
ylabel('Tasso di contagio')
title ('Approssimazione nel senso dei minimi quadrati con un polinomio di grado 6')








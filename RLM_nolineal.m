clear 
close all
clc


D_original = [1.2 15.7
              1.6 25.6
              1.9 35.1
              2.4 58.6
              3.2 103.4
              4.1 167.1
              4.4 195.6
              4.7 219.9
              5.2 271.4
               6   362];
set(gcf, 'color','w');

figure(1)
plot(D_original(:,1), D_original(:,2), 'r*')
xlabel('Corriente I(A)')
ylabel('Potencia P(W)')
title('Potencia vs Corriente')
grid


D_ajustado = [D_original(:,1) D_original(:,1).^2 D_original(:,2)]; %se le agrega un termino más la I al ^2 = D_orginal(:,.1).^2


[F C] = size(D_ajustado);

X = [ones(F,1) D_ajustado(:,1) D_ajustado(:,2)]; %ones(f,1) para el termino independiente
Y = D_ajustado(:,3);

%Proceso Matematico
Xtrans = X';
B = inv(Xtrans*X)*Xtrans*Y; 

Ypredict = X*B; %Realizamos la prediccion

%Error Recidual
Er = Y - Ypredict;

%Mean Squared Error(MSE)
MSE = (sum((Y - Ypredict).^2)/F);

%Root Mean Squared Error (RMSE) 
RMSE = (MSE)^0.5;

%Mean Absolute Error (MAE)
MAE = (sum(abs(Y - Ypredict))/F);


figure(2)
bar(Er)
title('Residuals')

%Visualización de las Predicciones vs Los Valores reales 
figure(3)
scatter(Y,Ypredict)
hold on 
xx = [0:500];
yy = [0:500];
plot(xx,yy, '.--y')
title('P vs I')
xlabel('Potencia P real(w)')
ylabel('Potencia P Predecida(w)')
title('Predicted vs. Actual')
grid

figure(4)
plot(D_original(:,1), D_original(:,2), 'r*')
hold on
plot(D_original(:,1), Ypredict, 'b')
xlabel('Corriente I(A)')
ylabel('Potencia P(W)')
title('Potencia vs Corriente')
grid
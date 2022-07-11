% Ejemplo de: https://college.cengage.com/mathematics/brase/understandable_statistics/7e/students/datasets/mlr/frames/frame.html

%Systolic Blood Pressure Data

%The data (X1, X2, X3) are for each patient.
%X1 = systolic blood pressure
%X2 = age in years
%X3 = weight in pounds

%Quiero que X1 y X3 sean mis datos y X2 se´ra lo que vamos a predecir

clear 
clc

D = [132	52	173
143	59	184
153	67	194
162	73	211
154	64	196
168	74	220
137	54	188
149	61	188
159	65	207
128	46	167
166	72	217];

[F C]=size(D);

%X = 1s X1 y X3
X = [ones(F,1)  D(:,1) D(:,3)]; %ones(11,1)Se le pone un termino independiente  
%Y = X2
Y = D(:,2);
Xtrans = X';%'Transpuesta 3x3
B = inv(Xtrans*X)*Xtrans*Y; 
%b0 = B(1);
%b1 = B(2);
%b2 = B(3);
%Ypredict = b0 + b1*X1+....
Ypredict = X*B; %Realizamos la prediccion

%Error Recidual
Er = Y - Ypredict
%RMSE raiz(Elevo al cuadrado y divido por la cantidad de datos)
RMSE = (sum((Y-Ypredict).^2)/F)^0.5

r = Y - Ypredict

figure(1)
bar(r)%Error de cada instancia (11 en este caso)
title('Residuals')

figure(2)
scatter(Y,Ypredict)%Si es bueno debe parecer una linea recta
title('Predicted vs. Actual')


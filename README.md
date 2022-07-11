# Multivariable_Regression_NASA
Clasificación de cuerpos celestes utilizando regresión lineal multivariable utilizando pandas y MATLAB.

La base de datos aquí presentada se puede encontrar en kaggle como \href{https://www.kaggle.com/brsdincer/star-type-classification/}{"Star Type Classification / NASA"}.  El objetivo de esta base de datos se refiere a la predicción del tipo de estrella según medidas astrofísicas. Contiene 240 valores y 7 características. Para este caso, utilicemos la ultima característica como nuestro target el cual, es un conjunto de datos que va de 0 a 5, de la forma 0: Enana Roja, 1: Enana Marrón, 2: Enana Blanca, 3: Secuencia Principal, 4: Super Gigantes y 5: Hiper Gigantes. 

Implementación en MATLAB
Con el preprocesamiento de datos realizado, pasamos a la implementación del modelo en MATLAB. 
La base de datos empleada posee características con pesos variables, lo cual puede generar problemas en la predicción. Se debe, por tanto, realizar la normalización de los datos; tanto del conjunto de características como el target.

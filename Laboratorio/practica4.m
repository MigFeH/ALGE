%% Ejercicio 1.1 de la tanda 3

% U = <(1, -1, 0, 1), (-1, 0, 1, 0), (1, -2, 1, 2)>
% ¿Base de U?
% Base = sistema generador + sistema libre
SistU = [1, -1, 0, 1; -1, 0, 1, 0; 1, -2, 1, 2];
rank(SistU);
SistUGJ = rref(SistU); % escalonamiento
BaseU = SistUGJ;
BaseU(3,:) = [];
% Solución: Base de U = (<1 0 -1 0), (0 1 -1 -1)>
% Implícitas de U
coefU = null(sym(BaseU)).'
syms x y z t
% Ecuaciones implicitas de U:
%Ecs = coefU*[x,y,z,t].'
Ecs = coefU*[x,y,z,t].'; % Equivalencia pero con simbólicos

% V -> x+y+z = 1, x+2z+t = 0
CoefV = [1,1,1,0;1,0,2,1];
% Trasponemos para tener los vectores en las filas
%BaseV = null(CoefV).'
BaseV = null(sym(CoefV)).'; % Equivalencia pero con simbólicos

% Suma de U+V: menor subespacio que contiene a ambos
SistGenSuma = [BaseU; BaseV];
BaseSuma = rref(SistGenSuma); % Sistema generador escalonado
BaseSuma(4,:) = []; % Quitamos el vector de ceros

% Intersección de U y V
% Los vectores de la intersección deben cumplir ambas implicitas
CoefInter = [coefU; CoefV]; % matriz de coeficientes de las implicitas
BaseInter = null(CoefInter).' % Trasponemos para que la base esté en las filas

%% Ejercicio 1.2 de la tanda 3
% S = <(1,1,1), (1,3,1), (-2,1,3)>
SgenS = [1,1,1;1,3,1;-2,1,3]
rank(SgenS)





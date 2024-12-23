A = [1,2,3;4,5,6;7,8,9]
B = [1 2 3]

A(1,1) %% accedemos al elemento (1,1) de la matriz A (se empieza a contar desde el 1)
A([2,1,3],:) %% [elementos de la fila 1 a la 2, de la 2 a la 1, de la 3 a la 3, mover todos los elementos de sus columnas]

exp(B) %% E elevado a la matriz

% vectores equiespaciados
1:2:5 % crea un vector cuyo primer elemento es el 1, hace saltos de longitud 2 (elemento1 + salto = elemento2) hasta que el ultimo elemento no sobrepase al 5 (ultimo elemento <= 5)
linspace(0,2,5) % a partir de los valores pertenecientes al intervalo [0,2], crea un vector en el que toma valores de ese
% intervalo de tal forma que dicho vector tenga (5) valores con distancia
% equitativa entre ellos

% matrices con nombres propios
eye(3) % matriz identidad
zeros(2,3)
ones(2,3)

% concatenacion de matrices
Ampl=[A,B.'] % hace la matriz ampliada de A y B (se pone el B.' para trasponer la matriz B de forma que se pueda
% añadir a la matriz A la columna de B (si no se hace esto entonces da
% error por las dimensiones de B (prueba a hacer Ampl=[A,B] y si da error
% haces el B.')))
c = [A;B] % concatena las matrices; la ampliación la hace de forma que la fila de B sea la ultima fila de la ampliada

%operaciones

A+A % suma de matrices
A*A % producto matricial
A.*A % multiplicación elemento a elemento de dos matrices (a11 * b11)
A.^2 % hace el cuadrado de cada elemento de la matriz
det(A) % determinante
rank(A) % rango de A
%inv(A) % inversa de A

clear all
syms x
f(x) = ones(3)+diag([x,x,x]) % matriz de todo 1 de orden 3 con x+1 como diagonal

%%%%%%%% EJERCICIOS %%%%%%%%
clc
clear all

% Ejercicio 3.1
% Construir una matriz A, de orden 5 × 5, cuyos elementos sean todos 1. Modificar la tercera
% fila, de manera que todos sus elementos sean 20.
A = ones(5)
A(3,:) = 20

% Ejercicio 3.2
A=[0 pi;pi/2 3*pi/2]
cos(A) % matriz cuyos elementos son los cosenos de los elementos de A
B=[1+i,-1,1;2+2i,0,-5i]
C=abs(B) % matriz cuyos elementos son los módulos de los elementos de B
D=imag(B) % matriz cuyos elementos son las partes imaginarias de los de B


% Ejercicio 3.3
% 1. Construir los vectores v = (1, 2, i) y u = (1;2;i).
v = [1,2,i]
u = [1;2;i]

% 2. Construir el vector w cuyas coordenadas sean los números impares comprendidos entre
% el 3 y el 25.
w = [3:2:25]

% 3. Almacenar en h la coordenada novena de w.
h = w(1,9)

% 4. Con ayuda del apartado 2, calcular el vector w1 = (2^3, 2^5, ..., 2^25)
%(Nótese que sus componentes no son equiespaciadas).
w1 = 2*ones(1)
w1 = w1.^w % 2^cada elemento de w

% 5. Construir un vector w2 , cuyas componentes formen una partición uniforme de 54 puntos
% del intervalo [2, 3].
w2 = linspace(2,3,54)


% Ejercicio 3.4
% 1. Construir la matriz A =
%    1 3 5 
%    2 4 6 
%    7 9 11 
%    8 10 15
A = [1 3 5;2 4 6;7 9 11;8 10 15]

% 2. Extraer la tercera columna de A y almacenarla en la variable v.
v = A(:,3)

% 3. Extraer el elemento de A que ocupa el lugar (1,3) y memorizarlo en la variable a13.
a13 = A(1,3)

% 4. Construir la matriz B que resulta de suprimir la segunda fila de A.
B = A
B(2,:) = []

% 5. Construir la matriz C , resultante de cambiar la segunda columna de B por el vector
%     1
% W = 0
%     1
W = [1;0;1]
C = B
C(:,2) = W

%                                                                                7
% 6. Construir la matriz D que resulta al añadir a la derecha de C el vector b = 2
%                                                                                7
b = [7;2;7]
D = [C,b]


% 7. Construir la matriz E que resulta de añadir a la matriz A una última fila con el vector
% b = (7, 2, 7).
b = [7,2,7]
E = [A;b]




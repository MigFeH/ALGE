%a = 10
%syms x %pasar variable a numerica
%f(x) = 1/x
%f(7)
%pi_sim = sym(pi) %pasar algo numerico a una variable (pi_sim = pi , no es pi_sim = 3.1416...)


% Ejercicio 1.1 (1)
%solucion = 5^(2) - (17 * 2) + (7/5) - 12^(1/2)


% Ejercicio 1.1 (2)
%solucion_1 = 3^(2) - 5 * (2 - (3/4) * 7)
%solucion_2 = 3^(2) - (5 * 2) - (3/(4*7))


% Ejercicio 1.1 (3)
%solucion = 7^(2) - (17 * 2) + (7/5) - 15^(1/2)


% Ejercicio 1.1 (4)
%pi
%format long %maximo de decimales
%pi
%format rat %equivalencia en fracción
%pi
%format short %decimales redondeados
%pi

%operacion_1 = 10 * pi
%operacion_2 = 100 * pi
%operacion_3 = 1000 * pi
%operacion_4 = 2 * exp(3)
%operacion_5 = 2 * exp(-3)


% Ejercicio 1.2 (1)
%34 = b %da error porque está guardando el valor de una variable un número 34 (para que funcione el 34
% deberia ser una variable mediante el comando sym(34))


% Ejercicio 1.2 (2)
%x = 3
%y = 5
%area = 27


% Ejercicio 1.2 (3)
%solucion = x + area


% Ejercicio 1.2 (4)
%a1 = 8
%1a = 88 %da error porque el nombre de una variable nunca puede empezar por un número


% Ejercicio 1.2 (5)
%5 + 2^(1/2)


% Ejercicio 1.3 (1)
%clc


% Ejercicio 1.3 (2)
%clear x
%clear area


% Ejercicio 1.3 (3)
%clear all


% Ejercicio 1.4 (1)
%5 + pi


% Ejercicio 1.4 (2)
%syms pi
%pi = 6


% Ejercicio 1.4 (3)
%5 + pi (dará otro resultado debido a que hay una variable nombrada como pi que guarda el valor 6 del anterior ejercicio)


% Ejercicio 1.4 (4)
%clear pi


% Ejercicio 1.4 (5)
%solucion_1 = sin(pi/2)
%solucion_2 = exp(4)


% Ejercicio 1.4 (6)
%primera_forma = sqrt(2)
%segunda_forma = 2 ^ (1/2)


% Ejercicio 1.5 (1)
%syms x y
%f = x^(2) + y^(2)


% Ejercicio 1.5 (2)
%syms a b
%a = 1/4
%b = 2^(1/2)


% Ejercicio 1.5 (3)
%solucion = subs(f,{x,y},{a,b}) %sustituimos en f la variable x e y por las constantes a y b


% Ejercicio 1.6 (1)
% hecho desde el principio de la práctica


% Ejercicio 1.6 (2)
%x = 5
%y = 7
%s = x + y


% Ejercicio 1.6 (3)
% seleccionas la orden y pulsas f9, automáticamente en la vantana de comandos se ejecuta la orden seleccionada


% Ejercicio 2.1 (1)
%z = (1-exp((pi/2)*i))/(1+exp((pi/2)*i))
%w = exp(pi*i)*(1-exp((-pi/3)*i))


% Ejercicio 2.1 (2)
%syms pi
%pi = 3.14
%z = (1-exp((pi/2)*i))/(1+exp((pi/2)*i))
%w = exp(pi*i)*(1-exp((-pi/3)*i))
%u = ((z+conj(w))/(2*i))+(1/2)


% Ejercicio 2.2 (1)
z = 1 + i
w = 1 - (3^(1/2))* i

syms arg_z arg_w

argumento_z = angle(z)
argumento_w = angle(w)

modulo_z = abs(z)
modulo_w = abs(w)



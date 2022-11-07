
derivada(X,X,1).
%derivada de una suma de funciones. --> http://www.nivaria.net/blog/index.php/prolog/383-derivada-de-una-funcion-entera
derivada(U+V,X,DU+DV) :- derivada(U,X,DU) , derivada(V,X,DV).
%derivada de un producto de funciones.-> http://www.nivaria.net/blog/index.php/prolog/383-derivada-de-una-funcion-entera
derivada(U*V,X,U*DV) :- number(U), derivada(V,X,DV).
derivada(U*V,X,V*DU) :- number(V), derivada(U,X,DU).
derivada(U*V,X,U*DV+DU*V) :- not(number(U)), not(number(V)), derivada(U,X,DU), derivada(V,X,DV).
derivada(U/V, X, ((DU*V)-(U*DV)/(V)^2)) :- not(number(U)), not(number(V)), derivada(U, X, DU), derivada(V, X, DV).

%derivada logaritmo
derivada(ln(U), X, DU/U) :- derivada(U, X, DU).
%derivada trigonmetricas
derivada(sen(U), X, cos(U)*DU) :- derivada(U, X, DU).
derivada(cos(U), X, -sen(U)*DU) :- derivada(U, X, DU).
derivada(arctan(U), X,  DU/(1+(U^2))) :- not(number(U)), derivada(U, X, DU).
%derivada de una potencia -> http://www.nivaria.net/blog/index.php/prolog/383-derivada-de-una-funcion-entera
derivada(X^N,X,N*X^NN) :- N>0, NN is N-1.
%derivada de un potencia pero funcion
derivada(U^N, X, N*(U^NN)*(DU)) :- derivada(U, X, DU), N>0, NN is N-1.
%derivada exponencial
derivada(exp(U), X, exp(U)*DU) :- not(number(U)), derivada(U, X, DU).
%derivada de una constante numérica -> http://www.nivaria.net/blog/index.php/prolog/383-derivada-de-una-funcion-entera
derivada(X,_,0):- number(X).

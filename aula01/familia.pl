% Fatos
pai(joao, maria).
pai(joao, pedro).

% Regras 
filho(X,Y) :- pai(Y,X).
irmaos(X, Y, Z) :- pai(Z, X), pai(Z, Y), \+X = Y.

%==== Consultas ====%
% ?- filho(maria, joao). -> true.
% ?- irmaos(maria, pedro, joao). -> true.
% Fatos
pai(joao, lucas).
pai(joao, joaquim).
pai(joaquim, bruno).
pai(pedro, silvia).

mae(maria, lucas).
mae(maria, joaquim).
mae(laura, silvia).
mae(silvia, bruno).

% Regras
avo_paterno(X,Y):- pai(Z,Y),pai(X,Z).
avo_materno(X,Y):- mae(Z,Y),pai(X,Z).

tem_filho(X):- pai(X,_);mae(X,_).

irmaos(X,Y):- (pai(Z,X),pai(Z,Y));(mae(Z,X),mae(Z,Y)),(X\=Y).

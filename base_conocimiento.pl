% Hechos dynamic

:- dynamic enfermedad/3.        % (nombre, categoria, recomendacion)
:- dynamic es_sintoma/1.        % (nombre)
:- dynamic tiene_sintoma/2.     % (enfermedad, sintoma)
:- dynamic paciente/2.          % (nombre, edad)
:- dynamic historial/3.         % (paciente, enfermedad, fecha)

% Reglas estáticas

recomendacion(Enfermedad, Recomendacion) :- enfermedad(Enfermedad, _, Recomendacion).


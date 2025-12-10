% Hechos dynamic

:- dynamic enfermedad/3.        % (nombre, categoria, recomendacion)
:- dynamic es_sintoma/1.        % (nombre)
:- dynamic tiene_sintoma/2.     % (enfermedad, sintoma)
:- dynamic paciente/2.          % (nombre, edad)
:- dynamic historial/3.         % (paciente, enfermedad, fecha)

% Reglas estáticas

recomendacion(Enfermedad, Recomendacion) :- enfermedad(Enfermedad, _, Recomendacion).

enfermedades_por_sintoma(Sintoma, Enfermedad) :- tiene_sintoma(Enfermedad, Sintoma).

diagnostico_categoria(Categoria, Enfermedad) :- enfermedad(Enfermedad, Categoria, _).

enfermedades_cronicas(Enfermedad) :- enfermedad(Enfermedad, cronica, _).

diagnostico(Sintoma, Enfermedad) :- tiene_sintoma(Enfermedad, Sintoma).

coinciden_sintomas([], _).

coinciden_sintomas([Head | Tail], Enfermedad) :-
    tiene_sintoma(Enfermedad, Head),
    coinciden_sintomas(Tail, Enfermedad).
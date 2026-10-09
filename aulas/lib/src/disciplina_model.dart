

import 'dart:ffi';
import 'dart:io';

class Disciplina {
  Disciplina(
    this.id,
    this.nome,
    this.professor,
    this.alunos_matriculados,
    this.aulas,
    this.carga_horaria,
    this.horario,
    this.local,
  );

  final Int id;
  final String nome;
  final dynamic professor;
  final List<dynamic> alunos_matriculados;
  final List<dynamic> aulas;
  final Int carga_horaria;
  final HttpDate horario;
  final String local;

}
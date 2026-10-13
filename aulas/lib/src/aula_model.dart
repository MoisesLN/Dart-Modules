import 'dart:ffi';

import 'package:aulas/src/disciplina_model.dart';

class Aula {
  Aula(
    this.id,
    this.disciplina,
    this.quantidade,
    this.data
  );
  final Int id;
  final Disciplina disciplina;
  final Int quantidade;
  final DateTime data;
}
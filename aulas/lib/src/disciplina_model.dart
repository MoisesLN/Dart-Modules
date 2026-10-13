class Disciplina {
  final int id;
  final String nome;
  final String professor;
  final List<String> alunosMatriculados;
  final List<String> aulas;
  final int cargaHoraria;
  final String local;

  Disciplina({
    required this.id,
    required this.nome,
    required this.professor,
    List<String>? alunosMatriculados,
    List<String>? aulas,
    required this.cargaHoraria,
    required this.local,
  })  : alunosMatriculados = alunosMatriculados ?? [],
        aulas = aulas ?? [];
}
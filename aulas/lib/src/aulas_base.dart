import 'dart:io';

/// Módulo exemplo.
/// TODO: Adapte para algo específico do seu módulo.
class AulasBase {
  /// Menu de opções do módulo exemplo.
  /// TODO: Adapte ao seu módulo, mas mantenha o nome da propriedade como `menu` para que o código do binário funcione corretamente.
  static List<Map<String, dynamic>> menu = [
    { 'titulo': 'Listar todas as aulas cadastradas', 'permissao': null, 'metodo': listar },
    { 'titulo': 'Cadastrar aula', 'permissao': 'professor', 'metodo': cadastrar },
    { 'titulo': 'Excluir aula', 'permissao': 'professor', 'metodo': excluir },
    { 'titulo': 'Listar aula', 'permissao': null, 'metodo': listar},
    { 'titulo': 'Editar aula', 'permissao': 'professor', 'metodo': editar},

    { 'titulo': 'Listar todas as disciplinas cadastradas', 'permissao': null, 'metodo': listar },
    { 'titulo': 'Cadastrar disciplina', 'permissao': 'professor', 'metodo': cadastrar },
    { 'titulo': 'Excluir disciplina', 'permissao': 'professor', 'metodo': excluir },
    { 'titulo': 'Listar disciplina', 'permissao': null, 'metodo': listar},
    { 'titulo': 'Editar disciplina', 'permissao': 'professor', 'metodo': editar},
  ];

  static final List<String> informacoes = [];


  static void listar() {
    if (informacoes.isEmpty) {
      print('Nenhuma informação cadastrada.');
    } else {
      print('Informações cadastradas:');
      for (int i=0; i<informacoes.length; i++) {
        print('- $i: ${informacoes[i]}');
      }
    }
  }

  static void cadastrar() {
    print('Digite a informação que deseja cadastrar:');
    String? input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      informacoes.add(input);
      print('Informação cadastrada.');
    } else {
      print('Nenhuma informação foi cadastrada.');
    }
  }

  static void excluir() {
    print('Digite a informação que deseja excluir:');
    String? input = stdin.readLineSync() ?? '';
    int? index = int.tryParse(input);
    if (index != null && index >= 0 && index < informacoes.length) {
      informacoes.removeAt(index);
      print('Informação excluída com sucesso.');
    } else {
      print('Informação não encontrada.');
    }
  }

  static void editar(List<String> informacoes) {
  print('Digite o índice da informação que deseja editar:');

    String? input = stdin.readLineSync() ?? '';
    int? index = int.tryParse(input);

    if (index != null && index >= 0 && index < informacoes.length) {
      print('Digite a nova informação:');

      String novaInformacao = stdin.readLineSync() ?? '';

      informacoes[index] = novaInformacao;

      print('Informação editada com sucesso.');
    } else {
      print('Informação não encontrada.');
    }
  }
}
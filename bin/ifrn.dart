
import 'dart:io';
import 'package:aulas/aulas.dart';
import 'package:exemplo/exemplo.dart';
import 'package:usuarios/usuarios.dart';

const String version = '0.0.1';

void main(List<String> arguments) {
  List<Map<String, dynamic>> opcoes = [];

  // Exemplos de usuários com permissões diferentes
  // TODO: Importar a classe Usuario do pacote implementado pelo Grupo 1. (feito)
  // O Map que simulava a classe Usuario foi substituído pela classe real.
  Usuario usuario1 = Usuario(
    id: 1,
    nome: 'Fulano',
    email: 'fulano@ifrn.edu.br',
    senha: '',
    dataCadastro: DateTime.now(),
    permissoes: [],
  );

  Usuario usuario2 = Usuario(
    id: 2,
    nome: 'Beltrano',
    email: 'beltrano@ifrn.edu.br',
    senha: '',
    dataCadastro: DateTime.now(),
    permissoes: ['admin', 'professor'],
  );

  // Usuário logado
  // TODO: Você deve adaptar isso para usar a classe Usuario real. (feito)
  // Use 0 para testar um usuário sem permissões ou 1 para admin/professor.
  var usuario = [usuario1, usuario2][1];

  opcoes += Exemplo.menu;
  // TODO: Adicionar opções do seu pacote aqui (feito)
  opcoes += Usuario.menu;
  opcoes += AulasManager.menu;

  String? input;
  do {
    print('============= IFRN Suíte =============\n');

    print('Menu:');
    for (int i = 0; i < opcoes.length; i++) {
      print('$i - ${opcoes[i]['titulo']}');
    }
    print('\nDigite uma opção (ou "sair"):');
    input = stdin.readLineSync() ?? '';
    print('');
    int? escolha = int.tryParse(input);

    if (input == 'sair') {
      print('Obrigado por usar o IFRN Suíte. Até a próxima!');
    } else if (escolha != null && escolha >= 0 && escolha < opcoes.length) {
      // Se é necessária uma permissão e o usuário não tem, exibe mensagem de
      // acesso negado e continua o loop
      // : Você deve adaptar a condição do if abaixo à classe Usuario real. (feito)
      if (opcoes[escolha]['permissao'] != null &&
          !usuario.permissoes.contains(opcoes[escolha]['permissao'])) {
        print('Acesso negado. Você não tem permissão para fazer isso.\n');
        continue;
      }
      // Se chegou aqui, tem permissão, então executa o método correspondente
      // à opção escolhida
      opcoes[escolha]['metodo']();
    } else {
      print('Opção inválida.');
    }
    print('\nAperte ENTER para continuar...');
    stdin.readLineSync();
  } while (input != 'sair');
}

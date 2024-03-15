import 'package:project_tag/aulas/atividadeAula05/cliente.dart';
import 'package:project_tag/aulas/atividadeAula05/cidade.dart';
import 'package:project_tag/aulas/atividadeAula05/estado.dart';
import 'package:project_tag/aulas/atividadeAula05/fornecedor.dart';
import 'package:project_tag/aulas/atividadeAula05/venda.dart';

void main() {
  var estadoPR = Estado(id: 1, nome: 'Paraná', sigla: 'PR');
  var estadoSP = Estado(id: 2, nome: 'Paraná', sigla: 'PR');
  var cidadeTrabalho = Cidade(id: 1, nome: 'Paranavaí', estado: estadoPR);
  var cidadeMoradia = Cidade(id: 2, nome: 'São Paulo', estado: estadoSP);

  var cidadeCriacao = Cidade(
      id: 3,
      nome: 'Cuabá',
      estado: Estado(id: 3, nome: 'Mato Grosso', sigla: 'MT'));

  var cliente = Cliente(
      id: 1, nome: 'João', trabalho: cidadeTrabalho, moradia: cidadeMoradia);

  var fornecedor = Fornecedor(
      id: 1, nome: 'Maria', trabalho: cidadeTrabalho, moradia: cidadeMoradia);

  var venda = Venda(
      id: 1,
      cliente: cliente,
      fornecedor: fornecedor,
      calculoComissao: (int x, int y) => (x + y) * 0.3);

  var vendaDireta = Venda(
      id: 1,
      cliente: Cliente(
          id: 2,
          nome: 'Fulano',
          trabalho: Cidade(
              id: 4,
              nome: 'Rio Branco',
              estado: Estado(id: 4, nome: 'Acre', sigla: 'AC')),
          moradia: Cidade(
              id: 5,
              nome: 'Natal',
              estado:
                  Estado(id: 5, nome: 'Rio Grande  do Norte', sigla: 'RN'))),
      fornecedor: Fornecedor(
          id: 2,
          nome: 'Ciclano',
          trabalho: Cidade(
              id: 6,
              nome: 'Belo Horizonte',
              estado: Estado(id: 6, nome: 'Minas Gerais', sigla: 'MG')),
          moradia: Cidade(
              id: 7,
              nome: 'Brasilia',
              estado: Estado(id: 7, nome: 'Distrito Federal', sigla: 'DF'))),
      calculoComissao: (int x, int y) => (x + y) * 0.3);

  var vendaDireta2 = Venda(
      id: 3,
      cliente: Cliente(
          id: 7,
          nome: 'Ciclano',
          trabalho: Cidade(
              id: 7,
              nome: 'Salvador',
              estado: Estado(id: 7, nome: 'Bahia', sigla: 'BH')),
          moradia: Cidade(
              id: 8,
              nome: 'Rio de Janeiro',
              estado: Estado(id: 7, nome: 'Rio de Janeiro', sigla: 'RJ'))),
      fornecedor: Fornecedor(
          id: 8,
          nome: 'Marcos',
          trabalho: Cidade(
              id: 9,
              nome: 'Manaus',
              estado: Estado(id: 8, nome: 'Amazonas', sigla: 'AM')),
          moradia: Cidade(
              id: 10,
              nome: 'Porto Alegre',
              estado: Estado(id: 9, nome: 'Rio Grande do Sul', sigla: 'RS'))),
      calculoComissao: (int x, int y) {
        double loucoop = 0.4;
        loucoop = 0.3 + 0.1 + loucoop;
        print(loucoop);
        return (x + y) * loucoop;
      });

  vendaDireta.calculoComissao(2, 2);
}

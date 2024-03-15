import 'package:project_tag/aulas/atividadeAula05/cliente.dart';
import 'package:project_tag/aulas/atividadeAula05/fornecedor.dart';

class Venda {
  int id;
  Cliente cliente;
  Fornecedor fornecedor;
  Function calculoComissao;

  Venda(
      {required this.id,
      required this.cliente,
      required this.fornecedor,
      required this.calculoComissao});
}

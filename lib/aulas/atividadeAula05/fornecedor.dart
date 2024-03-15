import 'package:project_tag/aulas/atividadeAula05/cidade.dart';

class Fornecedor {
  int id;
  String nome;
  Cidade trabalho;
  Cidade moradia;

  Fornecedor(
      {required this.id,
      required this.nome,
      required this.trabalho,
      required this.moradia});
}

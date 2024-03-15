import 'package:project_tag/aulas/atividadeAula05/cidade.dart';

class Cliente {
  int id;
  String nome;
  Cidade trabalho;
  Cidade moradia;

  Cliente(
      {required this.id,
      required this.nome,
      required this.trabalho,
      required this.moradia});
}

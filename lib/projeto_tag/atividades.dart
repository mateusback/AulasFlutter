void main() {
  String projeto = 'Tag';
  String tecnlogia = 'C#';
  String gestorResponsavel = 'Gestor não nomeado';
  bool isprojetoAtivo = true;
  int quantidadeDevs = 32;

  //Interpolação
  print(
      'O projeto $projeto, gerido por $gestorResponsavel, utiliza a tecnlogia $tecnlogia e tem $quantidadeDevs devs alocados');

  //Concatenação
  // ignore: prefer_interpolation_to_compose_strings
  print('O projeto ' +
      projeto +
      ', gerido por ' +
      gestorResponsavel +
      ', utiliza a tecnlogia ' +
      tecnlogia +
      ' e tem ' +
      quantidadeDevs.toString() +
      ' devs alocados');

  //Interpolação com processamento
  print(
      'O projeto $projeto ${isprojetoAtivo ? 'está ativa' : 'está desativada'}, gerido por $gestorResponsavel, utiliza a tecnlogia $tecnlogia e $quantidadeDevs devs alocados');
}

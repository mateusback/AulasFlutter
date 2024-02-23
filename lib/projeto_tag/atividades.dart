void main() {
  String projeto = 'Tag';
  String tecnologia = 'C#';
  String gestorResponsavel = 'Gestor não nomeado';
  bool isprojetoAtivo = true;
  int quantidadeDevs = 32;

  var projeto2 = 'Tag';
  var tecnologia2 = 'Java';
  var gestorResponsavel2 = 'Gestor não nomeado';
  var isprojetoAtivo2 = true;
  var quantidadeDevs2 = 32;

  //Interpolação
  print(
      'O projeto $projeto, gerido por $gestorResponsavel, utiliza a tecnologia $tecnologia e tem $quantidadeDevs devs alocados');

  //Concatenação
  // ignore: prefer_interpolation_to_compose_strings
  print('O projeto ' +
      projeto +
      ', gerido por ' +
      gestorResponsavel +
      ', utiliza a tecnologia ' +
      tecnologia +
      ' e tem ' +
      quantidadeDevs.toString() +
      ' devs alocados');

  //Interpolação com processamento
  print(
      'O projeto $projeto ${isprojetoAtivo ? 'está ativa' : 'está desativada'}, gerido por $gestorResponsavel, utiliza a tecnologia $tecnologia e $quantidadeDevs devs alocados');
}

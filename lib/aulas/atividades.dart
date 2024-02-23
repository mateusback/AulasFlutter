void main() {
  String disciplina = 'Programação Web';
  double cargaHoraria = 80.5;
  String professorResponsavel = 'Frank';
  bool isDisciplinaAtiva = true;
  int quantidadeAlunos = 32;

  //Interpolação
  print(
      'A disciplina $disciplina, minstrada pelo professor $professorResponsavel, tem a carga horária de $cargaHoraria e $quantidadeAlunos alunos matriculados');

  //Concatenação
  // ignore: prefer_interpolation_to_compose_strings
  print('A disciplina ' +
      disciplina +
      ', minstrada pelo professor ' +
      professorResponsavel +
      ', tem a carga horária de ' +
      cargaHoraria.toString() +
      ' e ' +
      'quantidadeAlunos alunos matriculados');

  //Interpolação com processamento
  print(
      'A disciplina $disciplina ${isDisciplinaAtiva ? 'está ativa' : 'está desativada'}, minstrada pelo professor $professorResponsavel, tem a carga horária de $cargaHoraria e $quantidadeAlunos alunos matriculados');
}

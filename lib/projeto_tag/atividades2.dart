import 'dart:io';

void main() {
  print('aula funções');

  print('nome:');
  var nome = stdin.readLineSync();

  print('idade');
  var entradaIdade = stdin.readLineSync() ?? '0';
  var idade = tenteConverter(entradaIdade);

  const tamanhoLista = 2;
  print('Meu nome é: $nome, minha idade é $idade');

  var listaNotas = [-1, -1];

  for (int i = 0; i < tamanhoLista; i++) {
    var ehNotaValida = true;
    do {
      print('Informe sua ${i + 1} nota:');
      var entradaNota = stdin.readLineSync() ?? '0';

      var nota = tenteConverter(entradaNota);

      listaNotas[i] = nota;

      ehNotaValida = validaNota(nota);

      if (ehNotaValida) print('Nota Inválida, tente novamente');
    } while (ehNotaValida);
  }

  double media = calculaMediaLista(listaNotas);
  print('$nome, sua média é: $media');
  print('${ehAprovado(media) ? 'Aprovado!' : 'Reprovado'}');
}

int tenteConverter(String s) {
  if (ehNumero(s))
    return int.parse(s);
  else
    return -1;
}

double calculaMediaLista(List<int> listaNotas) {
  int somaTotal = 0;
  for (int i = 0; i < listaNotas.length; i++) {
    somaTotal += listaNotas[i];
  }
  return somaTotal / listaNotas.length;
}

bool ehNumero(String s) {
  return int.tryParse(s) != null;
}

bool ehAprovado(double mediaNota) {
  return mediaNota >= 6.0;
}

bool validaNota(int nota) {
  return (nota < 0 || nota > 10);
}

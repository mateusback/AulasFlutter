import 'package:flutter/material.dart';
import 'package:project_tag/projeto_tag/atividades2.dart';

void main() {
  print('aula');
  funcao(1, 'teste');

  print('o aluno está ${ehAprovado(6, 7, 7) ? 'aprovado' : 'reprovado'}');

  funcaoParametrosNomeados(idade: 20, nome: 'Mateus');

  //Função nomeada
  ehAprovado2(nota1: 10, nota2: 6, a: calcularMediaPercentual, faltas: 5);

  //Função anônima
  ehAprovado2(
      nota1: 10,
      nota2: 6,
      a: (double n1, double n2) {
        return (n1 + n2) / 2;
      },
      faltas: 5);

  //Função anônima utilizando arrow function
  ehAprovado2(
      nota1: 10,
      nota2: 6,
      a: (double n1, double n2) => (n1 + n2) / 2,
      faltas: 5);
}

void funcao(int x, String y) {
  print('variavel é x: $x, e y é: $y');
}

bool ehAprovado(double nota1, double nota2,
    [double mediaAprovacao = 6, int faltasMaxima = 10]) {
  return (nota1 + nota2) / 2 >= mediaAprovacao;
}

void funcaoParametrosNomeados({required int idade, String nome = 'Fulano'}) {
  print('nome: $nome, idade: $idade');
}

bool ehAprovado2(
    {required double nota1,
    required double nota2,
    required Function(double, double) a,
    required int faltas,
    double mediaAprovacao = 6,
    int faltasMaxima = 10}) {
  var media = a(nota1, nota2);
  var ehAprovadoNota = media >= mediaAprovacao;
  var ehAprovadoFaltas = faltas <= faltasMaxima;
  return ehAprovadoNota && ehAprovadoFaltas;
}

double calcularMediaPercentual(double nota1, double nota2) {
  return (nota1 + nota2) / 2;
}

double calcularMedia(int teste, int teste2) {
  return 0;
}

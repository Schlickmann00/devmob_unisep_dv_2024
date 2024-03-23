// classe_data.dart
class Data {
  int? dia;
  int? mes;
  int? ano;
  // construtor padrao
  // Data(int dia, int mes, int ano) {
  //   this.dia = dia;
  //   this.mes = mes;
  //   this.ano = ano;
  // }

  // construtor simplificado
  Data([
    this.dia = 1,
    this.mes = 1,
    this.ano = 1900,
  ]);

  // construtor nomeado
  Data.nom({
    this.dia = 1,
    this.mes = 1,
    this.ano = 1900,
  });

  Data.ultimoDiaAno(this.ano) {
    dia = 31;
    mes = 12;
  }

  String obterData() {
    return "$dia/$mes/$ano";
  }

  String toString() {
    return obterData();
  }
}

main() {
  var dataAniversario = Data(4, 6, 1987);
  dataAniversario.dia = 4;
  dataAniversario.mes = 6;
  dataAniversario.ano = 1987;

  print(dataAniversario.obterData());
  print(dataAniversario);

  var dataX = Data.nom(ano: 2024);
  print(dataX);
  var dataHoje = Data.nom(
    dia: 22,
    mes: 3,
    ano: 2024,
  );
  print(dataHoje);
  // crie um construtor nomeado na classe data
  // com o nome de ultimoDiaDoAno, que receberá
  // somente o ano, e vai assumir o ultimo dia
  // daquele ano.
}

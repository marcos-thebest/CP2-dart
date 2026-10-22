class Pet {
  // Atributos
  String nome;
  String especie;
  int idade;
  double peso;

  // Construtor
  Pet(this.nome, this.especie, this.idade, this.peso);

  // Método
  void exibirFicha() {
    // Estrutura Condicional
    if (idade <= 1) {
      print("$nome ($especie) - $idade anos - $peso kg - Filhote");
    } else if (idade <= 7) {
      print("$nome ($especie) - $idade anos - $peso kg - Adulto");
    } else if (idade > 7) {
      print("$nome ($especie) - $idade anos - $peso kg - Idoso");
    } else {
      print("Idade inválida");
    }
  }

  void fazerAnivesario() {
    idade += 1;
    print("Feliz aniversário, $nome! Agora com $idade anos.");
  }
}

void main() {

  double pesoMaior = 0;
  int petGordo = 0;

  List<Pet> listaPets = [];

  // Instancias
  Pet pet1 = Pet("Thor", "Cachorro", 3, 28.5);
  Pet pet2 = Pet("Mia", "Gato", 1, 4.2);
  Pet pet3 = Pet("Bob", "Cachorro", 9, 12);
  Pet pet4 = Pet("Nina", "Coelho", 2, 1.8);

  listaPets.add(pet1);
  listaPets.add(pet2);
  listaPets.add(pet3);
  listaPets.add(pet4);

  for (int i = 0; i < listaPets.length; i++) {
    listaPets[i].exibirFicha();
  }

  pet2.fazerAnivesario();

  for (int a = 0; a < listaPets.length; a++) {
    if (pesoMaior < listaPets[a].peso) {
      pesoMaior = listaPets[a].peso;
      petGordo = a;
    }
  }

  print("Pet mais pesado: ${listaPets[petGordo].nome} ${listaPets[petGordo].peso} kg");
}

class ItemPedido {
  final String nome;
  final double preco;
  final int qtde;

  ItemPedido({required this.nome, required this.preco, required this.qtde});

  void exibirLinha() {
    double subtotal = preco * qtde;
    print('$qtde x $nome (R\$ ${preco.toStringAsFixed(2)}) = R\$ ${subtotal.toStringAsFixed(2)}');
  }
}

class Pedido{
  final String cliente;
  List<ItemPedido> itens = [];

  Pedido(this.cliente);

  void adicionarItem(ItemPedido item) {
    itens.add(item);
  }

  void mostrarResumo() {

    double total = 0;

    for (ItemPedido item in itens) {
      item.exibirLinha();
      total += item.preco * item.qtde;
    }

    print('Subtotal: R\$ ${total.toStringAsFixed(2)}');

    if (total > 200) {
      double desconto = total * 0.1;
      total -= desconto;

      print('Desconto (10%): R\$ ${desconto.toStringAsFixed(2)}');
    } else {
      print('Desconto: não aplicado');
    }

    print('Total a pagar: R\$ ${total.toStringAsFixed(2)}');
  }
}

void main() {
  Pedido pedido = Pedido('Carla');

  pedido.adicionarItem(ItemPedido(nome: 'Teclado', preco: 150.00, qtde: 1));
  pedido.adicionarItem(ItemPedido(nome: 'Mouse', preco: 89.9, qtde: 2));
  pedido.adicionarItem(ItemPedido(nome: 'Mousepad', preco: 35.5, qtde: 1));

  pedido.mostrarResumo();
}
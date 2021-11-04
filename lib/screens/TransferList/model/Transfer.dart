class Transfer {
  final double price;
  final int accNumber;

  Transfer(this.price, this.accNumber);

  @override
  String toString() {
    return '{ price: ${price}, accNumber: ${accNumber} }';
  }
}

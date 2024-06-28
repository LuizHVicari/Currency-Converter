class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel({required this.name, required this.real, required this.dolar, required this.euro, required this.bitcoin});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel> [
      CurrencyModel(
        name: 'Real', real: 1.0, dolar: .18, euro: .17, bitcoin: .0000029
      ),
      CurrencyModel(
        name: 'Dolar', real: 5.51, dolar: 1, euro: .93, bitcoin: .000016
      ),
      CurrencyModel(
        name: 'Euro', real: 5.90, dolar: 1.07, euro: 1, bitcoin: .000017
      ),
      CurrencyModel(
        name: 'Bitcoin', real: 340779.80, dolar: 61816.10, euro: 57740.87, bitcoin: 1
      ),
    ];
  }
}
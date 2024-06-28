import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController fromText = TextEditingController();
  final TextEditingController toText = TextEditingController();
  final homeController = HomeController(toText: toText, fromText: fromText);


  test('deve converter de real para dolar', () {
    toText.text = '2.0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });

  test('deve converter de dolar para real', () {
    toText.text = '1.0';
    homeController.toCurrency = CurrencyModel(name: 'Dolar', real: 5.51, dolar: 1, euro: .93, bitcoin: .000016);
    homeController.fromCurrency = CurrencyModel(name: 'Real', real: 1, dolar: .18, euro: .17, bitcoin: .0000029);
    homeController.convert();
    expect(fromText.text, '5.51');
  });
}
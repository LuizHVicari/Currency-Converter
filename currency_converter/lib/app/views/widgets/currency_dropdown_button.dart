import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyDropdownButton extends StatefulWidget {
  final onChanged;
  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;

  const CurrencyDropdownButton({
    super.key, 
    required this.onChanged, 
    required this.items, 
    required this.selectedItem
  });

  @override
  State<CurrencyDropdownButton> createState() => _CurrencyDropdownButtonState();
}

const List<String> list = ['Real', 'Dolar', 'Euro', 'Bitcoin'];

class _CurrencyDropdownButtonState extends State<CurrencyDropdownButton> {

  // _CurrencyDropdownButtonState({required this.onChanged, required this.items, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: SizedBox(
        height: 65,
        child: DropdownButton<CurrencyModel>(
          isExpanded: true,
          itemHeight: 70,
          value: widget.selectedItem,
          iconEnabledColor: Colors.amber,
          iconSize: 30,
          underline: Container(
            height: 1,
            color: Colors.amber),
          items: widget.items.map((e) => DropdownMenuItem<CurrencyModel>(value: e, child: Text(e.name))).toList(),
          onChanged: widget.onChanged
        ),
      ),
    );
  }
}
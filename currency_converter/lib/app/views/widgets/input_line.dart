import 'package:currency_converter/app/models/currency_model.dart';
import 'package:currency_converter/app/views/widgets/currency_dropdown_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputLine extends StatefulWidget {
  final List<CurrencyModel> items;
  final TextEditingController controller;
  final Function onChanged;
  final CurrencyModel selectedItem;

  const InputLine({
    super.key, 
    required this.items, 
    required this.controller, 
    required this.onChanged, 
    required this.selectedItem
  });

  @override
  State<InputLine> createState() => _InputLineState();
}

class _InputLineState extends State<InputLine> {

  _InputLineState();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CurrencyDropdownButton(items: widget.items, onChanged: widget.onChanged, selectedItem: widget.selectedItem,),
        const SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: TextField(
            scrollPadding: const EdgeInsets.only(bottom: 40),
            controller: widget.controller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.amber
                )
              ),
              disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.amber
                )
              )
            ),
          ),
        ),
      ],
    );
  }
}
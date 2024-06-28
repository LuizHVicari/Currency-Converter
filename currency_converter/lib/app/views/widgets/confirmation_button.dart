import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ConfirmationButton extends StatefulWidget {
  final HomeController homeController;
  const ConfirmationButton({super.key, required this.homeController});

  @override
  State<ConfirmationButton> createState() => _ConfirmationButtonState();
}

class _ConfirmationButtonState extends State<ConfirmationButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        widget.homeController.convert();
      },
       style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
        ),
      child: const Text(
        'CONVERTER',
        )
    );
  }
}
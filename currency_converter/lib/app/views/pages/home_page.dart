import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:currency_converter/app/views/widgets/confirmation_button.dart';
import 'package:currency_converter/app/views/widgets/input_line.dart';
import 'package:currency_converter/app/views/widgets/logo_image.dart';
import 'package:flutter/material.dart';


//ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();

  late HomeController homeController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const LogoImage(),
                InputLine(
                  selectedItem: homeController.toCurrency,
                  items: homeController.currencies, 
                  onChanged: (model) {
                    setState(() {
                      homeController.toCurrency = model;
                    });
                  }, 
                  controller: toText,),
                const SizedBox(height: 10),
                InputLine(
                  selectedItem: homeController.fromCurrency,
                  items: homeController.currencies, 
                  onChanged: (model) {
                    setState(() {
                      homeController.fromCurrency = model;
                    });
                  }, 
                  controller: fromText,),
                const SizedBox(height: 20),
                ConfirmationButton(homeController: homeController),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
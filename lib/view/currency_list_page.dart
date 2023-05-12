import 'package:currency_calculator/model/currency.dart';
import 'package:currency_calculator/service/currency_service.dart';
import 'package:flutter/material.dart';

class CurrencyListPage extends StatefulWidget {
  final Currency selected;
  CurrencyListPage({super.key, required this.selected});

  @override
  State<CurrencyListPage> createState() =>
      _CurrencyListPageState(selected: selected);
}

class _CurrencyListPageState extends State<CurrencyListPage> {
  List<Currency> currencies = [];
  CurrencyService service = CurrencyService();
  late Currency selected;
  _CurrencyListPageState({required this.selected});

  @override
  void initState() {
    service.getCurrencyData().then((value) => {
          setState(() {
            currencies = value.curriencies;
          })
        });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: currencies.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              tileColor: Colors.grey.shade800,
              textColor: Colors.white,
              trailing: selected.code == currencies[index].code
                  ? const Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  : null,
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text(
                  currencies[index].symbolNative!,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(currencies[index].name!),
              onTap: () {
                setState(() {
                  selected = currencies[index];
                  Navigator.of(context).pop(selected);
                });
              },
            ),
          );
        },
      ),
    );
  }
}

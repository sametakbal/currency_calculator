import 'package:currency_calculator/model/currency.dart';
import 'package:currency_calculator/model/currency_data.dart';
import 'package:dio/dio.dart';

class CurrencyService {
  final _currenciesUrl =
      'https://api.freecurrencyapi.com/v1/currencies?apikey={yourApiKey}';

  Currency getDefaultFirst() {
    return Currency(
        symbol: "€",
        name: "Euro",
        symbolNative: "€",
        decimalDigits: 2,
        rounding: 0,
        code: "EUR",
        namePlural: "Euros");
  }

  Future<Data> getCurrencyData() async {
    final dio = Dio();
    final response = await dio.get(_currenciesUrl);
    if (response.statusCode == 200) {
      CurrencyData currencyData = CurrencyData.fromJson(response.data);
      return currencyData.data!;
    }
    throw Exception('Bad Request');
  }
}

import 'currency.dart';

class CurrencyData {
  Data? data;

  CurrencyData({data});

  CurrencyData.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
}

class Data {
  List<String> keys = [
    'EUR',
    'USD',
    'JPY',
    'BGN',
    'CZK',
    'DKK',
    'GBP',
    'HUF',
    'PLN',
    'RON',
    'SEK',
    'CHF',
    'ISK',
    'NOK',
    'HRK',
    'RUB',
    'TRY',
    'AUD',
    'BRL',
    'CAD',
    'CNY',
    'HKD',
    'IDR',
    'ILS',
    'INR',
    'KRW',
    'MXN',
    'MYR',
    'NZD',
    'PHP',
    'SGD',
    'THB',
    'ZAR'
  ];

  List<Currency> curriencies = [];

  Data.fromJson(Map<String, dynamic> json) {
    for (var key in keys) {
      if (json[key] != null) {
        curriencies.add(Currency.fromJson(json[key]));
      }
    }
  }
}

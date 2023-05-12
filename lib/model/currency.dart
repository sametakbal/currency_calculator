class Currency {
  String? symbol;
  String? name;
  String? symbolNative;
  int? decimalDigits;
  int? rounding;
  String? code;
  String? namePlural;

  Currency(
      {symbol, name, symbolNative, decimalDigits, rounding, code, namePlural});

  Currency.fromJson(Map<String, dynamic> json) {
    symbol = json['symbol'];
    name = json['name'];
    symbolNative = json['symbol_native'];
    decimalDigits = json['decimal_digits'];
    rounding = json['rounding'];
    code = json['code'];
    namePlural = json['name_plural'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['symbol'] = symbol;
    data['name'] = name;
    data['symbol_native'] = symbolNative;
    data['decimal_digits'] = decimalDigits;
    data['rounding'] = rounding;
    data['code'] = code;
    data['name_plural'] = namePlural;
    return data;
  }
}

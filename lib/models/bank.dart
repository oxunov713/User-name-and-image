class Bank {
  String? cardExpire;
  String? cardNumber;
  String? cardType;
  String? currency;
  String? iban;

  Bank({
    required this.cardExpire,
    required this.cardNumber,
    required this.cardType,
    required this.currency,
    required this.iban,
  });

  factory Bank.fromJson(Map<String, Object?> json) => Bank(
        cardExpire: json['cardExpire'] as String?,
        cardNumber: json['cardNumber'] as String?,
        cardType: json['cardType'] as String?,
        currency: json['currency'] as String?,
        iban: json['iban'] as String?,
      );
}

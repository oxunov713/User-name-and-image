class Hair {
  String? color;
  String? type;

  Hair({
    required this.type,
    required this.color,
  });

  factory Hair.fromJson(Map<String, Object?> json) => Hair(
        type: json['type'] as String?,
        color: json['color'] as String?,
      );
}

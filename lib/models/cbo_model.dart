class Cbo {
  final int id;
  final String code;
  final String description;

  Cbo({required this.id, required this.code, required this.description});

  Cbo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        code = json['code'],
        description = json['description'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'code': code,
    'description': description
  };

}
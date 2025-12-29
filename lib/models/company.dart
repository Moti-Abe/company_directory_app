class Company {
  final int id;
  final String name;
  final String address;
  final String country;
  final String industry;
  final int employeeCount;
  final String ceoName;
  final String logo;

  Company({
    required this.id,
    required this.name,
    required this.address,
    required this.country,
    required this.industry,
    required this.employeeCount,
    required this.ceoName,
    required this.logo,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      country: json['country'],
      industry: json['industry'],
      employeeCount: json['employeeCount'],
      ceoName: json['ceoName'],
      logo: json['logo'],
    );
  }
}

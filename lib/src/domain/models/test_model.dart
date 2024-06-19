
class TestModel{
  String savol;
  String javobA;
  String javobB;
  String javobC;
  String togtiJavob;
  String? javobD;
  TestModel({
    required this.savol,
    required this.javobA,
    required this.javobB,
    required this.javobC,
    required this.togtiJavob,
    this.javobD,
});

  factory TestModel.fromJson(Map<String, Object?> json){
    return TestModel(
        savol: json["savo"] as String,
        javobA: json["javobA"] as String,
        javobB: json["javobB"] as String,
        javobC: json["javobC"]as String,
        togtiJavob: json["togtiJavob"] as String,
        javobD: json["javobD"] as String?,
    );
  }





}

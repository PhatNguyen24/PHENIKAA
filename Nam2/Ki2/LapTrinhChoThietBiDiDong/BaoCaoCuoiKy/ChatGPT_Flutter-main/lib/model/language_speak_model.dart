import 'package:chatgpt/data/methods.dart';
import 'package:chatgpt/model/base_model.dart.dart';

class LanguageSpeakModel extends BaseModel {
  LanguageSpeakModel(super.data);

  String get name => Methods.getString(data, 'name');
  String get locale => Methods.getString(data, 'locale');

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LanguageSpeakModel &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  int get hashCode => name.hashCode;
}

import 'dart:async';

class LoginValidators {

  final validateEmail = StreamTransformer<String, String>.fromHandlers(
      handleData: (email, sink){
        if(email.contains("@")){
          sink.add(email);
        } else {
          sink.addError("Insira um e-mail válido!");
        }
      }
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink){
        if(password.length > 5){
          sink.add(password);
        } else {
          sink.addError("Senha inválida! /n Sua senha deve conter pelo menos 6 caracteres");
        }
      }
  );

}
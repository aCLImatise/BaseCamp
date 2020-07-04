version 1.0

task MessageValidate {
  input {
    String? message
    File? path
  }
  command <<<
    message-validate \
      ~{message} \
      ~{path}
  >>>
  parameter_meta {
    message: ""
    path: ""
  }
}
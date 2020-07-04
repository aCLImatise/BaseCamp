version 1.0

task MessageCount {
  input {
    String? message
    File? path
  }
  command <<<
    message-count \
      ~{message} \
      ~{path}
  >>>
  parameter_meta {
    message: ""
    path: ""
  }
}
version 1.0

task Messagecount {
  input {
    String? message
    File? path
  }
  command <<<
    message_count \
      ~{message} \
      ~{path}
  >>>
  parameter_meta {
    message: ""
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}
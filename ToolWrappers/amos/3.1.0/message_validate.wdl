version 1.0

task Messagevalidate {
  input {
    String? message
    File? path
  }
  command <<<
    message_validate \
      ~{message} \
      ~{path}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    message: ""
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}
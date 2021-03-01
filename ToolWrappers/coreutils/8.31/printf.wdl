version 1.0

task Printf {
  input {
    String format
    String? argument
  }
  command <<<
    printf \
      ~{format} \
      ~{argument}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format: ""
    argument: ""
  }
  output {
    File out_stdout = stdout()
  }
}
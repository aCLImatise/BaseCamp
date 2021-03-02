version 1.0

task ShannonCpp {
  input {
    String? subcommand
    String see
  }
  command <<<
    shannon_cpp \
      ~{subcommand} \
      ~{see}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    subcommand: ""
    see: ""
  }
  output {
    File out_stdout = stdout()
  }
}
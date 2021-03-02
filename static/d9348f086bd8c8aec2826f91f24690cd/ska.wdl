version 1.0

task Ska {
  input {
    String subcommand
  }
  command <<<
    ska \
      ~{subcommand}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    subcommand: ""
  }
  output {
    File out_stdout = stdout()
  }
}
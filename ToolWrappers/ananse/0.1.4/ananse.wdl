version 1.0

task Ananse {
  input {
    String subcommand
  }
  command <<<
    ananse \
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
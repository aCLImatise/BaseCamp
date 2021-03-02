version 1.0

task Gimme {
  input {
    String subcommand
  }
  command <<<
    gimme \
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
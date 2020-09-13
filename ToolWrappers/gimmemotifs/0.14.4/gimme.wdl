version 1.0

task Gimme {
  input {
    String subcommand
  }
  command <<<
    gimme \
      ~{subcommand}
  >>>
  parameter_meta {
    subcommand: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Dashing {
  input {
    String subcommand
    String? options_dot_dot_dot
  }
  command <<<
    dashing \
      ~{subcommand} \
      ~{options_dot_dot_dot}
  >>>
  parameter_meta {
    subcommand: ""
    options_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task JellyfishCmd {
  input {
    String arg_dot_dot_dot
  }
  command <<<
    jellyfish cmd \
      ~{arg_dot_dot_dot}
  >>>
  parameter_meta {
    arg_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}
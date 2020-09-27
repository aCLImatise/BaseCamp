version 1.0

task UfastaArg {
  input {
    String u_fast_a
    String cmd
    String arg_dot_dot_dot
  }
  command <<<
    ufasta arg___ \
      ~{u_fast_a} \
      ~{cmd} \
      ~{arg_dot_dot_dot}
  >>>
  parameter_meta {
    u_fast_a: ""
    cmd: ""
    arg_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}
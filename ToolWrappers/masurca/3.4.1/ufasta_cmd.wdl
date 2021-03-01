version 1.0

task UfastaCmd {
  input {
    String arg_dot_dot_dot
  }
  command <<<
    ufasta cmd \
      ~{arg_dot_dot_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}
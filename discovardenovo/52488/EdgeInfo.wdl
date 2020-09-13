version 1.0

task EdgeInfo {
  input {
    Int arg_one
  }
  command <<<
    EdgeInfo \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}
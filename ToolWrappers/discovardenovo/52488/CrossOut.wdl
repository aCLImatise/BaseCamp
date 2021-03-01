version 1.0

task CrossOut {
  input {
    Int arg_one
  }
  command <<<
    CrossOut \
      ~{arg_one}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task NhoodInfo {
  input {
    Int arg_one
  }
  command <<<
    NhoodInfo \
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
version 1.0

task FormPath {
  input {
    Int arg_one
  }
  command <<<
    FormPath \
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
version 1.0

task FormPath {
  input {
    Int arg_one
  }
  command <<<
    FormPath \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}
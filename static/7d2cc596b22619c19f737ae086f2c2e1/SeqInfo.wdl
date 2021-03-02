version 1.0

task SeqInfo {
  input {
    Int arg_one
  }
  command <<<
    SeqInfo \
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
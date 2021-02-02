version 1.0

task CmpSeq {
  input {
    Int arg_one
  }
  command <<<
    CmpSeq \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}
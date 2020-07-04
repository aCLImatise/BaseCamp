version 1.0

task CmpSeq {
  input {
    String arg_one
  }
  command <<<
    CmpSeq \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
}
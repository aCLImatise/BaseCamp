version 1.0

task SeqInfo {
  input {
    String arg_one
  }
  command <<<
    SeqInfo \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
}
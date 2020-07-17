version 1.0

task CrossOut {
  input {
    String arg_one
  }
  command <<<
    CrossOut \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
}
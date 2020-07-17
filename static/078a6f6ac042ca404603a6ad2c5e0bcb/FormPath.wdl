version 1.0

task FormPath {
  input {
    String arg_one
  }
  command <<<
    FormPath \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
}
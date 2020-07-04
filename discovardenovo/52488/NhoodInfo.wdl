version 1.0

task NhoodInfo {
  input {
    String arg_one
  }
  command <<<
    NhoodInfo \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
}
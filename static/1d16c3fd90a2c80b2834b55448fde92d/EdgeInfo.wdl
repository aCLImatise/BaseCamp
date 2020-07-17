version 1.0

task EdgeInfo {
  input {
    String arg_one
  }
  command <<<
    EdgeInfo \
      ~{arg_one}
  >>>
  parameter_meta {
    arg_one: ""
  }
}
version 1.0

task TreeGen {
  input {
    String spec_one
  }
  command <<<
    treeGen \
      ~{spec_one}
  >>>
  parameter_meta {
    spec_one: ""
  }
}
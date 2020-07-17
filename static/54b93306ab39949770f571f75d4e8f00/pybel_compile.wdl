version 1.0

task PybelCompile {
  input {
    File path
  }
  command <<<
    pybel compile \
      ~{path}
  >>>
  parameter_meta {
    path: ""
  }
}
version 1.0

task PybelInsert {
  input {
    File path
  }
  command <<<
    pybel insert \
      ~{path}
  >>>
  parameter_meta {
    path: ""
  }
}
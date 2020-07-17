version 1.0

task PybelNeo {
  input {
    File path
  }
  command <<<
    pybel neo \
      ~{path}
  >>>
  parameter_meta {
    path: ""
  }
}
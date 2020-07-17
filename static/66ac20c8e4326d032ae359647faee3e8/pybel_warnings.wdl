version 1.0

task PybelWarnings {
  input {
    File path
  }
  command <<<
    pybel warnings \
      ~{path}
  >>>
  parameter_meta {
    path: ""
  }
}
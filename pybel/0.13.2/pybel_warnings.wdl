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
  output {
    File out_stdout = stdout()
  }
}
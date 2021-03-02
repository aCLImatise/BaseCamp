version 1.0

task PybelWarnings {
  input {
    File path
  }
  command <<<
    pybel warnings \
      ~{path}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task PybelInsert {
  input {
    File path
  }
  command <<<
    pybel insert \
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
version 1.0

task Transit {
  input {
    String python
  }
  command <<<
    transit \
      ~{python}
  >>>
  runtime {
    docker: "quay.io/biocontainers/transit:3.2.1--py_0"
  }
  parameter_meta {
    python: ""
  }
  output {
    File out_stdout = stdout()
  }
}
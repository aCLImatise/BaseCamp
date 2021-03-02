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
    docker: "None"
  }
  parameter_meta {
    python: ""
  }
  output {
    File out_stdout = stdout()
  }
}
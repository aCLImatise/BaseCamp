version 1.0

task Transit {
  input {
    String python
  }
  command <<<
    transit \
      ~{python}
  >>>
  parameter_meta {
    python: ""
  }
  output {
    File out_stdout = stdout()
  }
}
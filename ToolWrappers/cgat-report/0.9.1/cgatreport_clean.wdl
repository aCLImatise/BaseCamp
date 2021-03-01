version 1.0

task Cgatreportclean {
  input {
    String python
  }
  command <<<
    cgatreport_clean \
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
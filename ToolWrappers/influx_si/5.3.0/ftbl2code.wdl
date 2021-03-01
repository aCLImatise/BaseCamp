version 1.0

task Ftbl2code {
  command <<<
    ftbl2code
  >>>
  runtime {
    docker: "quay.io/biocontainers/influx_si:5.3.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}
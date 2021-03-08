version 1.0

task Ftbl2optR {
  command <<<
    ftbl2optR
  >>>
  runtime {
    docker: "quay.io/biocontainers/influx_si:5.4.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}
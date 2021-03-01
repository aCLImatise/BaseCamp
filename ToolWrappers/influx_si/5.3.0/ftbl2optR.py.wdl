version 1.0

task Ftbl2optRpy {
  command <<<
    ftbl2optR_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/influx_si:5.3.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}
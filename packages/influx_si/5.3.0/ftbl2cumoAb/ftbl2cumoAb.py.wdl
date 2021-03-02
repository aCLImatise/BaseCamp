version 1.0

task Ftbl2cumoAbpy {
  command <<<
    ftbl2cumoAb_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/influx_si:5.3.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}
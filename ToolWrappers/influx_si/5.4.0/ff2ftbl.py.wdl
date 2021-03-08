version 1.0

task Ff2ftblpy {
  command <<<
    ff2ftbl_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/influx_si:5.4.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}
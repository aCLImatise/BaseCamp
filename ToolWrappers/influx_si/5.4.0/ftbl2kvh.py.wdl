version 1.0

task Ftbl2kvhpy {
  input {
    String network
  }
  command <<<
    ftbl2kvh_py \
      ~{network}
  >>>
  runtime {
    docker: "quay.io/biocontainers/influx_si:5.4.0--py_0"
  }
  parameter_meta {
    network: ""
  }
  output {
    File out_stdout = stdout()
  }
}
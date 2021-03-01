version 1.0

task Ftbl2netan {
  input {
    String network
  }
  command <<<
    ftbl2netan \
      ~{network}
  >>>
  runtime {
    docker: "quay.io/biocontainers/influx_si:5.3.0--py_0"
  }
  parameter_meta {
    network: ""
  }
  output {
    File out_stdout = stdout()
  }
}
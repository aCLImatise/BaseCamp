version 1.0

task HcaDssVersion {
  input {
    String hca
    String dss
  }
  command <<<
    hca dss version_ \
      ~{hca} \
      ~{dss}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hca: ""
    dss: ""
  }
  output {
    File out_stdout = stdout()
  }
}
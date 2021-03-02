version 1.0

task OpenMSInfo {
  command <<<
    OpenMSInfo
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  output {
    File out_stdout = stdout()
  }
}
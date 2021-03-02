version 1.0

task GenericWrapper {
  command <<<
    GenericWrapper
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  output {
    File out_stdout = stdout()
  }
}
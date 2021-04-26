version 1.0

task AmrReport {
  command <<<
    amr_report
  >>>
  runtime {
    docker: "quay.io/biocontainers/ncbi-amrfinderplus:3.10.5--h17dc2d4_0"
  }
  output {
    File out_stdout = stdout()
  }
}
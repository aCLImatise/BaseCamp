version 1.0

task ExtractPIRs {
  command <<<
    extractPIRs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
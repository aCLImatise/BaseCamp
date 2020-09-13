version 1.0

task ExtractPIRs {
  command <<<
    extractPIRs
  >>>
  output {
    File out_stdout = stdout()
  }
}
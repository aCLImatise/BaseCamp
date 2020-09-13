version 1.0

task VcfIndvSummary {
  command <<<
    vcfIndvSummary
  >>>
  output {
    File out_stdout = stdout()
  }
}
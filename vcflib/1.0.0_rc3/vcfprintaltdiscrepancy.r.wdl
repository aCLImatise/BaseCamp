version 1.0

task Vcfprintaltdiscrepancyr {
  command <<<
    vcfprintaltdiscrepancy_r
  >>>
  output {
    File out_stdout = stdout()
  }
}
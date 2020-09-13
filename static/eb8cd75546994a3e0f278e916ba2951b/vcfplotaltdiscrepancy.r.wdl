version 1.0

task Vcfplotaltdiscrepancyr {
  command <<<
    vcfplotaltdiscrepancy_r
  >>>
  output {
    File out_stdout = stdout()
  }
}
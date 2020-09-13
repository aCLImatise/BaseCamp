version 1.0

task Vcfplotsitediscrepancyr {
  command <<<
    vcfplotsitediscrepancy_r
  >>>
  output {
    File out_stdout = stdout()
  }
}
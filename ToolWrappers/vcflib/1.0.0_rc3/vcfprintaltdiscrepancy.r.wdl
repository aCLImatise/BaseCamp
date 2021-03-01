version 1.0

task Vcfprintaltdiscrepancyr {
  command <<<
    vcfprintaltdiscrepancy_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
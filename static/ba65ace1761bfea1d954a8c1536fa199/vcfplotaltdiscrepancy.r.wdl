version 1.0

task Vcfplotaltdiscrepancyr {
  command <<<
    vcfplotaltdiscrepancy_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
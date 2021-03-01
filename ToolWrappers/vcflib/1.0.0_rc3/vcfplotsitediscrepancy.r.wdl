version 1.0

task Vcfplotsitediscrepancyr {
  command <<<
    vcfplotsitediscrepancy_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
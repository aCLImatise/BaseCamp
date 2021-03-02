version 1.0

task Vcfprintaltdiscrepancyr {
  command <<<
    vcfprintaltdiscrepancy_r
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Vcfprintaltdiscrepancyr {
  command <<<
    vcfprintaltdiscrepancy_r
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  output {
    File out_stdout = stdout()
  }
}
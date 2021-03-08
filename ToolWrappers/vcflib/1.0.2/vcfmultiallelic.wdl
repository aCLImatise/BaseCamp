version 1.0

task Vcfmultiallelic {
  command <<<
    vcfmultiallelic
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  output {
    File out_stdout = stdout()
  }
}
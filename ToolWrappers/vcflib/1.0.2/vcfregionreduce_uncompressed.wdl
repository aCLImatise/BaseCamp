version 1.0

task VcfregionreduceUncompressed {
  command <<<
    vcfregionreduce_uncompressed
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  output {
    File out_stdout = stdout()
  }
}
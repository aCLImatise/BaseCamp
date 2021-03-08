version 1.0

task VcfStripExtraHeaders {
  command <<<
    vcf_strip_extra_headers
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  output {
    File out_stdout = stdout()
  }
}
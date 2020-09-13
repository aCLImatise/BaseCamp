version 1.0

task VcfStripExtraHeaders {
  command <<<
    vcf_strip_extra_headers
  >>>
  output {
    File out_stdout = stdout()
  }
}
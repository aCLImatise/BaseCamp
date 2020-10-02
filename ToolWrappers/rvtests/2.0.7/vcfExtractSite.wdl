version 1.0

task VcfExtractSite {
  command <<<
    vcfExtractSite
  >>>
  output {
    File out_stdout = stdout()
  }
}
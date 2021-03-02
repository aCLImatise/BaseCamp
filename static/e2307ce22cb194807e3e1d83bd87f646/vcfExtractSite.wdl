version 1.0

task VcfExtractSite {
  command <<<
    vcfExtractSite
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
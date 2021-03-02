version 1.0

task Vcfmultiallelic {
  command <<<
    vcfmultiallelic
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
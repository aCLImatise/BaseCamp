version 1.0

task Vcfbiallelic {
  command <<<
    vcfbiallelic
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
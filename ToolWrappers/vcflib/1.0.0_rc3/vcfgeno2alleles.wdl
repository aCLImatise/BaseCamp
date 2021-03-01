version 1.0

task Vcfgeno2alleles {
  command <<<
    vcfgeno2alleles
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
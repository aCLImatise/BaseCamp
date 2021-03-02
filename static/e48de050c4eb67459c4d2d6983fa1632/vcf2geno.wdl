version 1.0

task Vcf2geno {
  command <<<
    vcf2geno
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
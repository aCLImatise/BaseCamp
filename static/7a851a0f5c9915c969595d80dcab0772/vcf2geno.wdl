version 1.0

task Vcf2geno {
  command <<<
    vcf2geno
  >>>
  output {
    File out_stdout = stdout()
  }
}
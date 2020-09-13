version 1.0

task Plink2vcf {
  command <<<
    plink2vcf
  >>>
  output {
    File out_stdout = stdout()
  }
}
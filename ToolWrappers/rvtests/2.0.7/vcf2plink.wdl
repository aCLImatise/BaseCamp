version 1.0

task Vcf2plink {
  command <<<
    vcf2plink
  >>>
  output {
    File out_stdout = stdout()
  }
}
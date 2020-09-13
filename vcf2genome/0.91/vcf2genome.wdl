version 1.0

task Vcf2genome {
  command <<<
    vcf2genome
  >>>
  output {
    File out_stdout = stdout()
  }
}
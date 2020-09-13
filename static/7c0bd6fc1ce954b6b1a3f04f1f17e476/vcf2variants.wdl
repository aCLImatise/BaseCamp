version 1.0

task Vcf2variants {
  command <<<
    vcf2variants
  >>>
  output {
    File out_stdout = stdout()
  }
}
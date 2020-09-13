version 1.0

task Vcftools {
  command <<<
    vcftools
  >>>
  output {
    File out_stdout = stdout()
  }
}
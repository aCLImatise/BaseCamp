version 1.0

task VcfMelt {
  command <<<
    vcf_melt
  >>>
  output {
    File out_stdout = stdout()
  }
}
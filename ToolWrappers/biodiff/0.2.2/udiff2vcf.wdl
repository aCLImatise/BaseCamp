version 1.0

task Udiff2vcf {
  command <<<
    udiff2vcf
  >>>
  output {
    File out_stdout = stdout()
  }
}
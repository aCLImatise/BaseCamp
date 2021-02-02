version 1.0

task Vcfparsealts {
  command <<<
    vcfparsealts
  >>>
  output {
    File out_stdout = stdout()
  }
}
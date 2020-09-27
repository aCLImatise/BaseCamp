version 1.0

task Vcfindex {
  command <<<
    vcfindex
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Vcfcomplex {
  command <<<
    vcfcomplex
  >>>
  output {
    File out_stdout = stdout()
  }
}
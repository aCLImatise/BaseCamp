version 1.0

task Vcfuniqalleles {
  command <<<
    vcfuniqalleles
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Vcfcountalleles {
  command <<<
    vcfcountalleles
  >>>
  output {
    File out_stdout = stdout()
  }
}
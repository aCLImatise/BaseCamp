version 1.0

task Vcfgenosamplenames {
  command <<<
    vcfgenosamplenames
  >>>
  output {
    File out_stdout = stdout()
  }
}
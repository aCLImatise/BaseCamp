version 1.0

task Vcfclearid {
  command <<<
    vcfclearid
  >>>
  output {
    File out_stdout = stdout()
  }
}
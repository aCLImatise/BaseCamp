version 1.0

task Vcfclearinfo {
  command <<<
    vcfclearinfo
  >>>
  output {
    File out_stdout = stdout()
  }
}
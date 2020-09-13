version 1.0

task Vcfqualfilter {
  command <<<
    vcfqualfilter
  >>>
  output {
    File out_stdout = stdout()
  }
}
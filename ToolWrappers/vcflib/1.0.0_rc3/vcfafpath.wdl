version 1.0

task Vcfafpath {
  command <<<
    vcfafpath
  >>>
  output {
    File out_stdout = stdout()
  }
}
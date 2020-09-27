version 1.0

task Vcfindels {
  command <<<
    vcfindels
  >>>
  output {
    File out_stdout = stdout()
  }
}
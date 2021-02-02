version 1.0

task Vcfnulldotslashdot {
  command <<<
    vcfnulldotslashdot
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task TestScatter2Dpl {
  command <<<
    test_Scatter2D_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
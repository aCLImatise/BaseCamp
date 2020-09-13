version 1.0

task TestLineplotpl {
  command <<<
    test_Lineplot_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
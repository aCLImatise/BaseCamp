version 1.0

task TestLineplotpl {
  command <<<
    test_Lineplot_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
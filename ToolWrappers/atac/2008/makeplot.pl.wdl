version 1.0

task Makeplotpl {
  command <<<
    makeplot_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
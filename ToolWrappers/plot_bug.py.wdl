version 1.0

task PlotBugpy {
  command <<<
    plot_bug_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
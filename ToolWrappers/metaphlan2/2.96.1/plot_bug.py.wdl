version 1.0

task PlotBugpy {
  command <<<
    plot_bug_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
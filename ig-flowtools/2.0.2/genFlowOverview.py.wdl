version 1.0

task GenFlowOverviewpy {
  command <<<
    genFlowOverview_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
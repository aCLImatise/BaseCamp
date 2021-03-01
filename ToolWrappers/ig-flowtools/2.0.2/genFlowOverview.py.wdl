version 1.0

task GenFlowOverviewpy {
  command <<<
    genFlowOverview_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
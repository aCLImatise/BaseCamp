version 1.0

task PlotCoverageVsIdentity {
  command <<<
    plotCoverageVsIdentity
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
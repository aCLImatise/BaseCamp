version 1.0

task PlotCoverageVsIdentity {
  command <<<
    plotCoverageVsIdentity
  >>>
  output {
    File out_stdout = stdout()
  }
}
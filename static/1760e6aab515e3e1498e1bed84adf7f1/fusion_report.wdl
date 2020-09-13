version 1.0

task FusionReport {
  command <<<
    fusion_report
  >>>
  output {
    File out_stdout = stdout()
  }
}
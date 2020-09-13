version 1.0

task AmrReport {
  command <<<
    amr_report
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task VtoolsReport {
  command <<<
    vtools_report
  >>>
  output {
    File out_stdout = stdout()
  }
}
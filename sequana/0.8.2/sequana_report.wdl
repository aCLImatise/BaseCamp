version 1.0

task SequanaReport {
  command <<<
    sequana_report
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task SequanaReport {
  command <<<
    sequana_report
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
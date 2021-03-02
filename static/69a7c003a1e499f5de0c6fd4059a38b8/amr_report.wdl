version 1.0

task AmrReport {
  command <<<
    amr_report
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
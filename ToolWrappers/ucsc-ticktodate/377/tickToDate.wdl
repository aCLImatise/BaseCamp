version 1.0

task TickToDate {
  command <<<
    tickToDate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
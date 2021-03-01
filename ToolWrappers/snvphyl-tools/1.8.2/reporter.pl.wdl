version 1.0

task Reporterpl {
  command <<<
    reporter_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
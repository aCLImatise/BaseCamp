version 1.0

task Reporterpl {
  command <<<
    reporter_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Cleanmepl {
  command <<<
    cleanme_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
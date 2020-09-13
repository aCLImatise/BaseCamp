version 1.0

task RunNUCmerpl {
  command <<<
    runNUCmer_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task RunContigNUCmerpl {
  command <<<
    runContigNUCmer_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
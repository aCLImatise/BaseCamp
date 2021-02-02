version 1.0

task CheckNUCmerpl {
  command <<<
    checkNUCmer_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
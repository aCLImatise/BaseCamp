version 1.0

task GraftM {
  command <<<
    graftM
  >>>
  output {
    File out_stdout = stdout()
  }
}
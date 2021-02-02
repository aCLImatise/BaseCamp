version 1.0

task BuildDBpl {
  command <<<
    buildDB_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
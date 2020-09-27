version 1.0

task DBG2OLC {
  command <<<
    DBG2OLC
  >>>
  output {
    File out_stdout = stdout()
  }
}
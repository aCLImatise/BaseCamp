version 1.0

task AddCols {
  command <<<
    addCols
  >>>
  output {
    File out_stdout = stdout()
  }
}
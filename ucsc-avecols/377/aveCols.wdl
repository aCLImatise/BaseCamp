version 1.0

task AveCols {
  command <<<
    aveCols
  >>>
  output {
    File out_stdout = stdout()
  }
}
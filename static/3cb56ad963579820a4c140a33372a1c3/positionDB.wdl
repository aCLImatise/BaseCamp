version 1.0

task PositionDB {
  command <<<
    positionDB
  >>>
  output {
    File out_stdout = stdout()
  }
}
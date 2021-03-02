version 1.0

task PositionDB {
  command <<<
    positionDB
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
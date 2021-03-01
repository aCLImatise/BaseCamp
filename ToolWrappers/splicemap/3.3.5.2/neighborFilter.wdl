version 1.0

task NeighborFilter {
  command <<<
    neighborFilter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task NeighborFilter {
  command <<<
    neighborFilter
  >>>
  output {
    File out_stdout = stdout()
  }
}
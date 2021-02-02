version 1.0

task Neighbor {
  command <<<
    neighbor
  >>>
  output {
    File out_stdout = stdout()
  }
}
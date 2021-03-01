version 1.0

task Neighbor {
  command <<<
    neighbor
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
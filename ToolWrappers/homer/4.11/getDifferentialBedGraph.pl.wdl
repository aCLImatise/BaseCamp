version 1.0

task GetDifferentialBedGraphpl {
  command <<<
    getDifferentialBedGraph_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task ShortestPathTN93 {
  command <<<
    ShortestPathTN93
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
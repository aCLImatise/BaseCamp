version 1.0

task PretextGraph {
  command <<<
    PretextGraph
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
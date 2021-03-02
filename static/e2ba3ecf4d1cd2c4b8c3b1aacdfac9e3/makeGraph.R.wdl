version 1.0

task MakeGraphR {
  command <<<
    makeGraph_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
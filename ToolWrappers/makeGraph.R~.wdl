version 1.0

task MakeGraphR {
  command <<<
    makeGraph_R_
  >>>
  output {
    File out_stdout = stdout()
  }
}
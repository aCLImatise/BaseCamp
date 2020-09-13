version 1.0

task MakeGraphR {
  command <<<
    makeGraph_R
  >>>
  output {
    File out_stdout = stdout()
  }
}
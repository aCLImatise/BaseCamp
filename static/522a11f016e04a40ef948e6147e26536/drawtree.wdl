version 1.0

task Drawtree {
  command <<<
    drawtree
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
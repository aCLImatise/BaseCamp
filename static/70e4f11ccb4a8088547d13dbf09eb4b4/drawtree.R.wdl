version 1.0

task DrawtreeR {
  command <<<
    drawtree_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
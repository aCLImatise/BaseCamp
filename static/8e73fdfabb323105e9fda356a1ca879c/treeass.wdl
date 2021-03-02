version 1.0

task Treeass {
  command <<<
    treeass
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
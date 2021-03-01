version 1.0

task Treestat {
  command <<<
    treestat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
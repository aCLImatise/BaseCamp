version 1.0

task Treeplotpl {
  command <<<
    treeplot_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
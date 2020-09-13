version 1.0

task Treeplotpl {
  command <<<
    treeplot_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
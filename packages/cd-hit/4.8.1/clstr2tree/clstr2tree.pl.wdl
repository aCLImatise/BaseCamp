version 1.0

task Clstr2treepl {
  command <<<
    clstr2tree_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
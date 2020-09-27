version 1.0

task BpBlast2treepl {
  command <<<
    bp_blast2tree_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
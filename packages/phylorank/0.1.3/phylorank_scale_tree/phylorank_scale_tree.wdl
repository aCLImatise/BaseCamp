version 1.0

task PhylorankScaleTree {
  command <<<
    phylorank scale_tree
  >>>
  output {
    File out_stdout = stdout()
  }
}
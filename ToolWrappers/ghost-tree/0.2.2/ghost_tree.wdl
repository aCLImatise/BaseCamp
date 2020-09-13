version 1.0

task Ghosttree {
  command <<<
    ghost_tree
  >>>
  output {
    File out_stdout = stdout()
  }
}
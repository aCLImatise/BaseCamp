version 1.0

task ArbReadTree {
  command <<<
    arb_read_tree
  >>>
  output {
    File out_stdout = stdout()
  }
}
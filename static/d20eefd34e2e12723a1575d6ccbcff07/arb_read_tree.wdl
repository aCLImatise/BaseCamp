version 1.0

task ArbReadTree {
  command <<<
    arb_read_tree
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
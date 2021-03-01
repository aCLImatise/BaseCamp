version 1.0

task BpTaxonomy2treepl {
  command <<<
    bp_taxonomy2tree_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
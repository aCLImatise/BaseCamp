version 1.0

task PhyluceGenetreesOrderGeneTreeFile {
  command <<<
    phyluce_genetrees_order_gene_tree_file
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task PhylorankBlTable {
  input {
    String? step_size
    String input_tree
    String tax_on_category
    String output_table
  }
  command <<<
    phylorank bl_table \
      ~{input_tree} \
      ~{tax_on_category} \
      ~{output_table} \
      ~{if defined(step_size) then ("--step_size " +  '"' + step_size + '"') else ""}
  >>>
  parameter_meta {
    step_size: "step size for mean branch length criterion (default: 0.01)"
    input_tree: "input tree to calculate branch length distributions"
    tax_on_category: "file indicating category for each taxon in the tree"
    output_table: "desired named of output table"
  }
}
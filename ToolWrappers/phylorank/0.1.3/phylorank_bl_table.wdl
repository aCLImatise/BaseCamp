version 1.0

task PhylorankBlTable {
  input {
    Int? step_size
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    step_size: "step size for mean branch length criterion (default:\\n0.01)\\n"
    input_tree: "input tree to calculate branch length distributions"
    tax_on_category: "file indicating category for each taxon in the tree"
    output_table: "desired named of output table"
  }
  output {
    File out_stdout = stdout()
  }
}
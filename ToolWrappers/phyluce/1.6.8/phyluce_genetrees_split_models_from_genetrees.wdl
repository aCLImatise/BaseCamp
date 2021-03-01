version 1.0

task PhyluceGenetreesSplitModelsFromGenetrees {
  input {
    File? gene_trees
    File? output_file_hold
  }
  command <<<
    phyluce_genetrees_split_models_from_genetrees \
      ~{if defined(gene_trees) then ("--genetrees " +  '"' + gene_trees + '"') else ""} \
      ~{if defined(output_file_hold) then ("--output " +  '"' + output_file_hold + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene_trees: "The cloudforest genetree file containing models"
    output_file_hold: "The output file to hold the parsed substitution model\\ndata\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_hold = "${in_output_file_hold}"
  }
}
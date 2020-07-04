version 1.0

task PhyluceGenetreesReformatRaxmlOutput {
  input {
    String? gene_trees
    String? boot_reps
    String? output_file_name
  }
  command <<<
    phyluce_genetrees_reformat_raxml_output \
      ~{if defined(gene_trees) then ("--genetrees " +  '"' + gene_trees + '"') else ""} \
      ~{if defined(boot_reps) then ("--bootreps " +  '"' + boot_reps + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    gene_trees: "The path to the directory containing RAxML best trees"
    boot_reps: "The path to the directory containing RAxML bootreps"
    output_file_name: "The output file name"
  }
}
version 1.0

task OtuCondensepy {
  input {
    File? input_assigned_taxonomy
    File? pruned_output_file
    File? non_unique_output_file
    String? phylogenetic_level
  }
  command <<<
    otu_condense_py \
      ~{if defined(input_assigned_taxonomy) then ("--input_assigned_taxonomy " +  '"' + input_assigned_taxonomy + '"') else ""} \
      ~{if defined(pruned_output_file) then ("--pruned_output_file " +  '"' + pruned_output_file + '"') else ""} \
      ~{if defined(non_unique_output_file) then ("--non_unique_output_file " +  '"' + non_unique_output_file + '"') else ""} \
      ~{if defined(phylogenetic_level) then ("--phylogenetic_level " +  '"' + phylogenetic_level + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_assigned_taxonomy: "The taxonomy file output by the assign_taxonomy\\nscript."
    pruned_output_file: "The output file for the pruned taxonomy list. Defaults\\nto condensed_assigned_taxonomy.txt"
    non_unique_output_file: "The file will contain a list of pruned OTU IDs\\nassociated with the OTU IDs they replaced. Defaults to\\nnonunique_otu_matrix.txt"
    phylogenetic_level: "Set the phylogenetic level at which to define OTUs for\\ncondensing and downstream processing. Defaults to\\nspecies level."
  }
  output {
    File out_stdout = stdout()
    File out_input_assigned_taxonomy = "${in_input_assigned_taxonomy}"
    File out_pruned_output_file = "${in_pruned_output_file}"
    File out_non_unique_output_file = "${in_non_unique_output_file}"
  }
}
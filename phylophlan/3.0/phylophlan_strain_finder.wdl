version 1.0

task PhylophlanStrainFinder {
  input {
    String? specify_file_phylogenetic_generated
    String? mutation_rates
    String? phylo_thr
    String? mut_rate_thr
    String? tree_format
    String? specify_output_filename
    Boolean? overwrite
    Boolean? specify_separator_use
    Boolean? verbose
  }
  command <<<
    phylophlan_strain_finder \
      ~{if defined(specify_file_phylogenetic_generated) then ("--input " +  '"' + specify_file_phylogenetic_generated + '"') else ""} \
      ~{if defined(mutation_rates) then ("--mutation_rates " +  '"' + mutation_rates + '"') else ""} \
      ~{if defined(phylo_thr) then ("--phylo_thr " +  '"' + phylo_thr + '"') else ""} \
      ~{if defined(mut_rate_thr) then ("--mutrate_thr " +  '"' + mut_rate_thr + '"') else ""} \
      ~{if defined(tree_format) then ("--tree_format " +  '"' + tree_format + '"') else ""} \
      ~{if defined(specify_output_filename) then ("--output " +  '"' + specify_output_filename + '"') else ""} \
      ~{true="--overwrite" false="" overwrite} \
      ~{true="-s" false="" specify_separator_use} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    specify_file_phylogenetic_generated: "Specify the file of the phylogenetic tree as generated from phylophlan.py (default: None)"
    mutation_rates: "Specify the file of the mutation rates as generated from phylophlan.py (default: None)"
    phylo_thr: "Maximum phylogenetic distance threshold for every pair of nodes in the same subtree (inclusive) (default: 0.05)"
    mut_rate_thr: "Maximum mutation rate ratio for every pair of nodes in the same subtree (inclusive) (default: 0.05)"
    tree_format: "Specify the format of the input tree (default: newick)"
    specify_output_filename: "Specify the output filename, if not specified will be stdout (default: None)"
    overwrite: "Overwrite the output file if exists (default: False)"
    specify_separator_use: "{;,,,      }, --separator {;,,,    } Specify the separator to use in the output (default: )"
    verbose: "Write more stuff (default: False)"
  }
}
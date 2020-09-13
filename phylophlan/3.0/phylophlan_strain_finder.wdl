version 1.0

task PhylophlanStrainFinder {
  input {
    File? specify_file_phylogenetic_generatedfrom_phylophlanpy_default_none
    File? mutation_rates
    Float? phylo_thr
    Float? mut_rate_thr
    String? tree_format
    File? specify_output_filename
    File? overwrite
    Boolean? specify_separator_use
    Boolean? verbose
  }
  command <<<
    phylophlan_strain_finder \
      ~{if defined(specify_file_phylogenetic_generatedfrom_phylophlanpy_default_none) then ("--input " +  '"' + specify_file_phylogenetic_generatedfrom_phylophlanpy_default_none + '"') else ""} \
      ~{if defined(mutation_rates) then ("--mutation_rates " +  '"' + mutation_rates + '"') else ""} \
      ~{if defined(phylo_thr) then ("--phylo_thr " +  '"' + phylo_thr + '"') else ""} \
      ~{if defined(mut_rate_thr) then ("--mutrate_thr " +  '"' + mut_rate_thr + '"') else ""} \
      ~{if defined(tree_format) then ("--tree_format " +  '"' + tree_format + '"') else ""} \
      ~{if defined(specify_output_filename) then ("--output " +  '"' + specify_output_filename + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (specify_separator_use) then "-s" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    specify_file_phylogenetic_generatedfrom_phylophlanpy_default_none: "Specify the file of the phylogenetic tree as generated\\nfrom phylophlan.py (default: None)"
    mutation_rates: "Specify the file of the mutation rates as generated\\nfrom phylophlan.py (default: None)"
    phylo_thr: "Maximum phylogenetic distance threshold for every pair\\nof nodes in the same subtree (inclusive) (default:\\n0.05)"
    mut_rate_thr: "Maximum mutation rate ratio for every pair of nodes in\\nthe same subtree (inclusive) (default: 0.05)"
    tree_format: "Specify the format of the input tree (default: newick)"
    specify_output_filename: "Specify the output filename, if not specified will be\\nstdout (default: None)"
    overwrite: "Overwrite the output file if exists (default: False)"
    specify_separator_use: "{;,,,      }, --separator {;,,,    }\\nSpecify the separator to use in the output (default: )"
    verbose: "Write more stuff (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_filename = "${in_specify_output_filename}"
    File out_overwrite = "${in_overwrite}"
  }
}
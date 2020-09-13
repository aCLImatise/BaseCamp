version 1.0

task BaseEvolve {
  input {
    Int? n_sites
    String? msa_format
    File? features
    String? cat_map
    Int? embed
    File? file_dot_hmm
    Int tree_one_dot_mod
    Int? tree_three_dot_mod
  }
  command <<<
    base_evolve \
      ~{file_dot_hmm} \
      ~{tree_one_dot_mod} \
      ~{tree_three_dot_mod} \
      ~{if defined(n_sites) then ("--nsites " +  '"' + n_sites + '"') else ""} \
      ~{if defined(msa_format) then ("--msa-format " +  '"' + msa_format + '"') else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(cat_map) then ("--catmap " +  '"' + cat_map + '"') else ""} \
      ~{if defined(embed) then ("--embed " +  '"' + embed + '"') else ""}
  >>>
  parameter_meta {
    n_sites: "Generate an alignment with <nsites> columns.  Default is 1000."
    msa_format: "|PHYLIP|MPM|SS\\nOutput alignment in specified format.  Default is FASTA."
    features: "(for use with a phylo-HMM)  Output an annotations file in GFF\\nreflecting the path through the phylo-HMM."
    cat_map: "(for use with --features)  Use specified category map to\\ndefine feature names."
    embed: ",<length>\\nEmbed an artificial element of the given length in the alignment,\\ndrawing columns from <alt.mod>.  A single element is embedded in\\nthe exact middle of the generated alignment.  Useful for testing\\nsensitivity of methods for functional element detection."
    file_dot_hmm: ""
    tree_one_dot_mod: ""
    tree_three_dot_mod: ""
  }
  output {
    File out_stdout = stdout()
    File out_features = "${in_features}"
  }
}
version 1.0

task ProphylePropagationPreprocessing.py {
  input {
    Float? rate_sampling_tree
    Boolean? autocomplete_tree_names
    Boolean? verbose
    Boolean? add_prefixes_node
  }
  command <<<
    prophyle_propagation_preprocessing.py \
      ~{if defined(rate_sampling_tree) then ("-s " +  '"' + rate_sampling_tree + '"') else ""} \
      ~{true="-A" false="" autocomplete_tree_names} \
      ~{true="-V" false="" verbose} \
      ~{true="-P" false="" add_prefixes_node}
  >>>
  parameter_meta {
    rate_sampling_tree: "rate of sampling the tree [no sampling]"
    autocomplete_tree_names: "autocomplete tree (names of internal nodes and FASTA paths)"
    verbose: "verbose"
    add_prefixes_node: "do not add prefixes to node names"
  }
}
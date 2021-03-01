version 1.0

task ProphylePropagationPreprocessingpy {
  input {
    Float? rate_sampling_tree
    Boolean? autocomplete_tree_names
    Boolean? verbose
    Boolean? add_prefixes_node
  }
  command <<<
    prophyle_propagation_preprocessing_py \
      ~{if defined(rate_sampling_tree) then ("-s " +  '"' + rate_sampling_tree + '"') else ""} \
      ~{if (autocomplete_tree_names) then "-A" else ""} \
      ~{if (verbose) then "-V" else ""} \
      ~{if (add_prefixes_node) then "-P" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rate_sampling_tree: "rate of sampling the tree [no sampling]"
    autocomplete_tree_names: "autocomplete tree (names of internal nodes and FASTA paths)"
    verbose: "verbose"
    add_prefixes_node: "do not add prefixes to node names"
  }
  output {
    File out_stdout = stdout()
  }
}
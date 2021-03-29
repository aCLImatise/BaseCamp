version 1.0

task AugurTraits {
  input {
    String? tree
    File? metadata
    String? weights
    Array[String] columns
    Boolean? confidence
    Int? sampling_bias_correction
    File? output_node_data
  }
  command <<<
    augur traits \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(weights) then ("--weights " +  '"' + weights + '"') else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{if (confidence) then "--confidence" else ""} \
      ~{if defined(sampling_bias_correction) then ("--sampling-bias-correction " +  '"' + sampling_bias_correction + '"') else ""} \
      ~{if defined(output_node_data) then ("--output-node-data " +  '"' + output_node_data + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augur:11.3.0--py_0"
  }
  parameter_meta {
    tree: "tree to perform trait reconstruction on (default:\\nNone)"
    metadata: "table with metadata, as CSV or TSV (default: None)"
    weights: "tsv/csv table with equilibrium probabilities of\\ndiscrete states (default: None)"
    columns: "metadata fields to perform discrete reconstruction on\\n(default: None)"
    confidence: "record the distribution of subleading mugration states\\n(default: False)"
    sampling_bias_correction: "a rough estimate of how many more events would have\\nbeen observed if sequences represented an even sample.\\nThis should be roughly the (1-sum_i p_i^2)/(1-sum_i\\nt_i^2), where p_i are the equilibrium frequencies and\\nt_i are apparent ones.(or rather the time spent in a\\nparticular state on the tree) (default: None)"
    output_node_data: "name of JSON file to save trait inferences to\\n(default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}
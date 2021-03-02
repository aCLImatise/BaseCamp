version 1.0

task PhylorankMarkTree {
  input {
    Float? thresholds
    Int? min_support
    Boolean? only_named_clades
    Int? min_length
    Boolean? no_percentile
    Boolean? no_relative_divergence
    Boolean? no_prediction
    String input_tree
    String output_tree
  }
  command <<<
    phylorank mark_tree \
      ~{input_tree} \
      ~{output_tree} \
      ~{if defined(thresholds) then ("--thresholds " +  '"' + thresholds + '"') else ""} \
      ~{if defined(min_support) then ("--min_support " +  '"' + min_support + '"') else ""} \
      ~{if (only_named_clades) then "--only_named_clades" else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if (no_percentile) then "--no_percentile" else ""} \
      ~{if (no_relative_divergence) then "--no_relative_divergence" else ""} \
      ~{if (no_prediction) then "--no_prediction" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    thresholds: "relative divergence thresholds for taxonomic ranks\\n(default: {\\\"d\\\": 0.33, \\\"p\\\": 0.56, \\\"c\\\": 0.65, \\\"o\\\": 0.78,\\n\\\"f\\\": 0.92, \\\"g\\\": 0.99})"
    min_support: "only mark nodes above the specified support value\\n(default=0) (default: 0)"
    only_named_clades: "only mark nodes with an existing label"
    min_length: "only mark nodes with a parent branch above the\\nspecified length (default=0) (default: 0.0)"
    no_percentile: "do not mark with percentile information"
    no_relative_divergence: "do not mark with relative divergence information"
    no_prediction: "do not mark with predicted rank information"
    input_tree: "input tree to mark"
    output_tree: "output tree with assigned taxonomic ranks"
  }
  output {
    File out_stdout = stdout()
  }
}
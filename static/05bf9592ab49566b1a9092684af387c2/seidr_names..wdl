version 1.0

task SeidrNames {
  input {
    String convert_network_text
    String aggregate
    String network_dot
    String backbone
    String index
    String neighbours
    String sample
    String threshold
    String view
    String stats
    String graph_stats
    String adjacency
    String matrix_dot
    String resolve
    String names_dot
    String cluster_enrichment
    String compare
    String edges_dot
    String roc
    String re_header
    String version
  }
  command <<<
    seidr names_ \
      ~{convert_network_text} \
      ~{aggregate} \
      ~{network_dot} \
      ~{backbone} \
      ~{index} \
      ~{neighbours} \
      ~{sample} \
      ~{threshold} \
      ~{view} \
      ~{stats} \
      ~{graph_stats} \
      ~{adjacency} \
      ~{matrix_dot} \
      ~{resolve} \
      ~{names_dot} \
      ~{cluster_enrichment} \
      ~{compare} \
      ~{edges_dot} \
      ~{roc} \
      ~{re_header} \
      ~{version}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    convert_network_text: "Convert network text files to SeidrFiles."
    aggregate: "Aggregate a set of SeidrFiles into a crowd"
    network_dot: "[Filter, threshold or search SeidrFiles]"
    backbone: "Calculate network backbone and filter edges\\nbased on noise corrected backbone measure."
    index: "Create index for SeidrFiles."
    neighbours: "Extract N first degree neighbours of all nodes\\nor a list of nodes in a SeidrFile."
    sample: "Sample random edges from a SeidrFile."
    threshold: "Calculate network threshold based on scale\\nfree fit and transitivity."
    view: "View, filter or search SeidrFiles."
    stats: "Compute node and edge centrality"
    graph_stats: "Calculate summary statistics of the network"
    adjacency: "Convert a SeidrFile to an adjacency"
    matrix_dot: "convert                        Interconvert various text based formats."
    resolve: "Convert node indices in text file to node"
    names_dot: "[Compare networks]"
    cluster_enrichment: "Test wether members of clusters in two\\nnetworks overlap significantly or extract\\nclusters."
    compare: "Compare two networks for shared/unique"
    edges_dot: "[Evaluate networks]"
    roc: "Compute ROC curves of predictions in \\nSeidrFiles given true edges."
    re_header: "Modify SeidrFile headers."
    version: "Print version."
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task CoconetCluster {
  input {
    File? path_output_output
    Int? threads
    Boolean? debug
    Boolean? quiet
    Boolean? silent
    Directory? continue
    Int? fragment_length
    String? features
    Int? max_neighbors
    String? vote_threshold
    String? algorithm
    Float? theta
    Int? gamma_one
    Int? gamma_two
    Int? n_clusters
    Boolean? recruit_small_contigs
  }
  command <<<
    coconet cluster \
      ~{if defined(path_output_output) then ("--output " +  '"' + path_output_output + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if defined(fragment_length) then ("--fragment-length " +  '"' + fragment_length + '"') else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(max_neighbors) then ("--max-neighbors " +  '"' + max_neighbors + '"') else ""} \
      ~{if defined(vote_threshold) then ("--vote-threshold " +  '"' + vote_threshold + '"') else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(theta) then ("--theta " +  '"' + theta + '"') else ""} \
      ~{if defined(gamma_one) then ("--gamma1 " +  '"' + gamma_one + '"') else ""} \
      ~{if defined(gamma_two) then ("--gamma2 " +  '"' + gamma_two + '"') else ""} \
      ~{if defined(n_clusters) then ("--n-clusters " +  '"' + n_clusters + '"') else ""} \
      ~{if (recruit_small_contigs) then "--recruit-small-contigs" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coconet-binning:1.1.0--py_0"
  }
  parameter_meta {
    path_output_output: "Path to output directory (default: output)"
    threads: "Number of threads (default: 5)"
    debug: "Print debugging statements (default: 20)"
    quiet: "Less verbose (default: None)"
    silent: "Only error messages (default: None)"
    continue: "Start from last checkpoint. The output directory needs\\nto be the same. (default: False)"
    fragment_length: "Length of contig fragments in bp. Default is half the\\nminimum contig length. (default: -1)"
    features: "[{coverage,composition} ...]\\nFeatures for binning (composition, coverage, or both)\\n(default: ['coverage', 'composition'])"
    max_neighbors: "Maximum number of neighbors to consider to compute the\\nadjacency matrix. (default: 250)"
    vote_threshold: "When this parameter is not set, contig-contig edges\\nare computed by summing the probability between all\\npairwise fragments between them.Otherwise, adopt a\\nvoting strategy and sets a hard-threshold on the\\nprobabilityfrom each pairwise comparison. (default:\\nNone)"
    algorithm: "Algorithm for clustering the contig-contig graph.\\nNote: the number of cluster is required if \\\"spectral\\\"\\nis chosen. (default: leiden)"
    theta: "(leiden) Minimum percent of edges between two contigs\\nto form an edge between them (default: 0.8)"
    gamma_one: "(leiden) CPM optimization value for the first run of\\nthe Leiden clustering (default: 0.3)"
    gamma_two: "(leiden) CPM optimization value for the second run of\\nthe Leiden clustering (default: 0.4)"
    n_clusters: "(spectral clustering) Maximum number of clusters\\n(default: None)"
    recruit_small_contigs: "Salvage short contigs (<2048) (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_output = "${in_path_output_output}"
    Directory out_continue = "${in_continue}"
  }
}
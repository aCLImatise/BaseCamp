version 1.0

task SgaCluster {
  input {
    Boolean? verbose
    File? out
    Int? min_cluster_size
    Int? max_cluster_size
    Int? min_overlap
    Boolean? error_rate
    Int? threads
    Int? iterations
    File? extend
    File? limit
    String reads
  }
  command <<<
    sga cluster \
      ~{reads} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(min_cluster_size) then ("--min-cluster-size " +  '"' + min_cluster_size + '"') else ""} \
      ~{if defined(max_cluster_size) then ("--max-cluster-size " +  '"' + max_cluster_size + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if (error_rate) then "--error-rate" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(extend) then ("--extend " +  '"' + extend + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "display verbose output"
    out: "write the clusters to FILE (default: clusters.txt)"
    min_cluster_size: "only write clusters with at least N reads (default: 2)"
    max_cluster_size: "abort the search if the cluster size exceeds N"
    min_overlap: "require an overlap of at least N bases between reads (default: 45)"
    error_rate: "the maximum error rate allowed to consider two sequences aligned (default: exact matches only)"
    threads: "use NUM worker threads to compute the overlaps (default: no threading)"
    iterations: "limit cluster extension to NUM iterations"
    extend: "extend previously existing clusters in FILE"
    limit: "do not extend through the sequences in FILE"
    reads: ""
  }
  output {
    File out_stdout = stdout()
  }
}
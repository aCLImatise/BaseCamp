version 1.0

task MmseqsClust {
  input {
    Int? cluster_mode
    Int? max_iterations
    Int? similarity_type
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs clust \
      ~{if defined(cluster_mode) then ("--cluster-mode " +  '"' + cluster_mode + '"') else ""} \
      ~{if defined(max_iterations) then ("--max-iterations " +  '"' + max_iterations + '"') else ""} \
      ~{if defined(similarity_type) then ("--similarity-type " +  '"' + similarity_type + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    cluster_mode: "0: Set-Cover (greedy)\\n1: Connected component (BLASTclust)\\n2,3: Greedy clustering by sequence length (CDHIT) [0]"
    max_iterations: "Maximum depth of breadth first search in connected component clustering [1000]"
    similarity_type: "Type of score used for clustering. 1: alignment score 2: sequence identity [2]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}
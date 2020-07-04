version 1.0

task MmseqsClust {
  input {
    Boolean? cluster_mode
    Boolean? max_iterations
    Boolean? similarity_type
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs clust \
      ~{true="--cluster-mode" false="" cluster_mode} \
      ~{true="--max-iterations" false="" max_iterations} \
      ~{true="--similarity-type" false="" similarity_type} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    cluster_mode: "0               0: Setcover, 1: connected component, 2: Greedy clustering by sequence length  3: Greedy clustering by sequence length (low mem)"
    max_iterations: "1000            maximum depth of breadth first search in connected component"
    similarity_type: "2               type of score used for clustering [1:2]. 1=alignment score. 2=sequence identity "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}
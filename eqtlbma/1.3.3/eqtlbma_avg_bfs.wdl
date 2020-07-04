version 1.0

task EqtlbmaAvgBfs {
  input {
    String? best_dim
    Boolean? all_dim
    Boolean? out
    Boolean? thread
  }
  command <<<
    eqtlbma_avg_bfs \
      ~{if defined(best_dim) then ("--bestdim " +  '"' + best_dim + '"') else ""} \
      ~{true="--alldim" false="" all_dim} \
      ~{true="--out" false="" out} \
      ~{true="--thread" false="" thread}
  >>>
  parameter_meta {
    best_dim: "the best config/type per SNP (and its posterior)"
    all_dim: "report also BF and/or posterior for all dimensions (configs or types) caution, the number of configurations can be big"
    out: "name of the output file (gzipped) if --cwts is not provided, the output file will be used as input for 'eqtlbma_hm'"
    thread: "number of threads (default=1)"
  }
}
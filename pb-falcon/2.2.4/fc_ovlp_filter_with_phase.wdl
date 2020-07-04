version 1.0

task FcOvlpFilterWithPhase.py {
  input {
    String? n_core
    String? fof_n
    String? db
    Int? max_diff
    Int? max_cov
    Int? min_cov
    Int? min_len
    String? best_n
    String? rid_phase_map
    String? strictness
  }
  command <<<
    fc_ovlp_filter_with_phase.py \
      ~{if defined(n_core) then ("--n-core " +  '"' + n_core + '"') else ""} \
      ~{if defined(fof_n) then ("--fofn " +  '"' + fof_n + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(max_diff) then ("--max-diff " +  '"' + max_diff + '"') else ""} \
      ~{if defined(max_cov) then ("--max-cov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(best_n) then ("--bestn " +  '"' + best_n + '"') else ""} \
      ~{if defined(rid_phase_map) then ("--rid-phase-map " +  '"' + rid_phase_map + '"') else ""} \
      ~{if defined(strictness) then ("--strictness " +  '"' + strictness + '"') else ""}
  >>>
  parameter_meta {
    n_core: "number of processes used for generating consensus (default: 4)"
    fof_n: "file contains the path of all LAS file to be processed in parallel (default: None)"
    db: "read db file path (default: None)"
    max_diff: "max difference of 5' and 3' coverage (default: None)"
    max_cov: "max coverage of 5' or 3' coverage (default: None)"
    min_cov: "min coverage of 5' or 3' coverage (default: None)"
    min_len: "min length of the reads (default: 2500)"
    best_n: "output at least best n overlaps on 5' or 3' ends if possible (default: 10)"
    rid_phase_map: "the file that encode the relationship of the read id to phase blocks (default: None)"
    strictness: "If >0, keep *only* the edges which have both nodes of the same phase. Unphased edges are considered dangereous here and removed. (default: 0)"
  }
}
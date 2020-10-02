version 1.0

task FcOvlpFilterWithPhasepy {
  input {
    String? rid_phase_map
    Int? n_core
    File? fof_n
    File? db
    Int? max_diff
    Int? max_cov
    Int? min_cov
    Int? min_len
    Int? best_n
    Int? strictness
  }
  command <<<
    fc_ovlp_filter_with_phase_py \
      ~{if defined(rid_phase_map) then ("--rid-phase-map " +  '"' + rid_phase_map + '"') else ""} \
      ~{if defined(n_core) then ("--n-core " +  '"' + n_core + '"') else ""} \
      ~{if defined(fof_n) then ("--fofn " +  '"' + fof_n + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(max_diff) then ("--max-diff " +  '"' + max_diff + '"') else ""} \
      ~{if defined(max_cov) then ("--max-cov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(best_n) then ("--bestn " +  '"' + best_n + '"') else ""} \
      ~{if defined(strictness) then ("--strictness " +  '"' + strictness + '"') else ""}
  >>>
  parameter_meta {
    rid_phase_map: "[--strictness STRICTNESS]"
    n_core: "number of processes used for generating consensus\\n(default: 4)"
    fof_n: "file contains the path of all LAS file to be processed\\nin parallel (default: None)"
    db: "read db file path (default: None)"
    max_diff: "max difference of 5' and 3' coverage (default: None)"
    max_cov: "max coverage of 5' or 3' coverage (default: None)"
    min_cov: "min coverage of 5' or 3' coverage (default: None)"
    min_len: "min length of the reads (default: 2500)"
    best_n: "output at least best n overlaps on 5' or 3' ends if\\npossible (default: 10)"
    strictness: "If >0, keep *only* the edges which have both nodes of\\nthe same phase. Unphased edges are considered\\ndangereous here and removed. (default: 0)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
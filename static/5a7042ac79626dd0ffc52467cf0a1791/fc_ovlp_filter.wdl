version 1.0

task FcOvlpFilter {
  input {
    String? n_core
    String? fof_n
    String? db
    Int? max_diff
    Int? max_cov
    Int? min_cov
    Int? min_len
    String? best_n
    Boolean? stream
    Boolean? debug
    Boolean? silent
  }
  command <<<
    fc_ovlp_filter \
      ~{if defined(n_core) then ("--n_core " +  '"' + n_core + '"') else ""} \
      ~{if defined(fof_n) then ("--fofn " +  '"' + fof_n + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(max_diff) then ("--max_diff " +  '"' + max_diff + '"') else ""} \
      ~{if defined(max_cov) then ("--max_cov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(min_cov) then ("--min_cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(best_n) then ("--bestn " +  '"' + best_n + '"') else ""} \
      ~{true="--stream" false="" stream} \
      ~{true="--debug" false="" debug} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    n_core: "number of processes used for generating consensus; 0 for main process only (default=4)"
    fof_n: "file contains the path of all LAS file to be processed in parallel"
    db: "read db file path"
    max_diff: "max difference of 5' and 3' coverage"
    max_cov: "max coverage of 5' or 3' coverage"
    min_cov: "min coverage of 5' or 3' coverage"
    min_len: "min length of the reads (default=2500)"
    best_n: "output at least best n overlaps on 5' or 3' ends if possible (default=10)"
    stream: "stream from LA4Falcon, instead of slurping all at once; can save memory for large data"
    debug: "single-threaded, plus other aids to debugging"
    silent: "suppress cmd reporting on stderr"
  }
}
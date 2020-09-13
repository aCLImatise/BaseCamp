version 1.0

task FcOvlpFilter {
  input {
    Int? n_core
    File? fof_n
    File? db
    Int? max_diff
    Int? max_cov
    Int? min_cov
    Int? min_len
    Int? best_n
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
      ~{if (stream) then "--stream" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    n_core: "number of processes used for generating consensus; 0\\nfor main process only (default=4)"
    fof_n: "file contains the path of all LAS file to be processed\\nin parallel"
    db: "read db file path"
    max_diff: "max difference of 5' and 3' coverage"
    max_cov: "max coverage of 5' or 3' coverage"
    min_cov: "min coverage of 5' or 3' coverage"
    min_len: "min length of the reads (default=2500)"
    best_n: "output at least best n overlaps on 5' or 3' ends if\\npossible (default=10)"
    stream: "stream from LA4Falcon, instead of slurping all at once;\\ncan save memory for large data"
    debug: "single-threaded, plus other aids to debugging"
    silent: "suppress cmd reporting on stderr"
  }
  output {
    File out_stdout = stdout()
  }
}
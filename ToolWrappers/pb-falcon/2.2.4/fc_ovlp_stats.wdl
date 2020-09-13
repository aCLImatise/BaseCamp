version 1.0

task FcOvlpStats {
  input {
    Int? n_core
    File? fof_n
    Int? min_len
    Int? db_fn
    Boolean? stream
    Boolean? debug
    Boolean? silent
  }
  command <<<
    fc_ovlp_stats \
      ~{if defined(n_core) then ("--n-core " +  '"' + n_core + '"') else ""} \
      ~{if defined(fof_n) then ("--fofn " +  '"' + fof_n + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(db_fn) then ("--db-fn " +  '"' + db_fn + '"') else ""} \
      ~{if (stream) then "--stream" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    n_core: "number of processes used for generating consensus; 0 for main process only (default: 4)"
    fof_n: "file contains the path of all LAS file to be processed in parallel (default: None)"
    min_len: "min length of the reads (default: 2500)"
    db_fn: "DAZZLER DB of preads (default: ./1-preads_ovl/preads.db)"
    stream: "stream from LA4Falcon, instead of slurping all at once; can save memory for large data (default: False)"
    debug: "single-threaded, plus other aids to debugging (default: False)"
    silent: "suppress cmd reporting on stderr (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task FcPrCtgTrack {
  input {
    Int? n_core
    String? base_dir
    Int? min_len
    Boolean? stream
    Boolean? debug
    Boolean? silent
    Int? best_n
  }
  command <<<
    fc_pr_ctg_track \
      ~{if defined(n_core) then ("--n_core " +  '"' + n_core + '"') else ""} \
      ~{if defined(base_dir) then ("--base_dir " +  '"' + base_dir + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if (stream) then "--stream" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if defined(best_n) then ("--bestn " +  '"' + best_n + '"') else ""}
  >>>
  parameter_meta {
    n_core: "number of processes used for for tracking reads; 0 for main process only (default: 4)"
    base_dir: "the base working dir of a FALCON assembly (default: ./)"
    min_len: "min length of the reads (default: 2500)"
    stream: "stream from LA4Falcon, instead of slurping all at once; can save memory for large data (default: False)"
    debug: "single-threaded, plus other aids to debugging (default: False)"
    silent: "suppress cmd reporting on stderr (default: False)"
    best_n: "keep best n hits (default: 40)"
  }
  output {
    File out_stdout = stdout()
  }
}
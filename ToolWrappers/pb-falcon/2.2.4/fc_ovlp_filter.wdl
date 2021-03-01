version 1.0

task FcOvlpFilter {
  input {
    File? out_fn
    Int? n_core
    File? las_fof_n
    File? db
    Int? max_diff
    Int? max_cov
    Int? min_cov
    Int? min_len
    Int? min_idt
    Boolean? ignore_indels
    Int? best_n
    Boolean? stream
    Boolean? debug
    Boolean? silent
  }
  command <<<
    fc_ovlp_filter \
      ~{if defined(out_fn) then ("--out-fn " +  '"' + out_fn + '"') else ""} \
      ~{if defined(n_core) then ("--n-core " +  '"' + n_core + '"') else ""} \
      ~{if defined(las_fof_n) then ("--las-fofn " +  '"' + las_fof_n + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(max_diff) then ("--max-diff " +  '"' + max_diff + '"') else ""} \
      ~{if defined(max_cov) then ("--max-cov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(min_idt) then ("--min-idt " +  '"' + min_idt + '"') else ""} \
      ~{if (ignore_indels) then "--ignore-indels" else ""} \
      ~{if defined(best_n) then ("--bestn " +  '"' + best_n + '"') else ""} \
      ~{if (stream) then "--stream" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out_fn: "Output filename (default: preads.m4)"
    n_core: "number of processes used for generating consensus; 0 for main process only (default: 4)"
    las_fof_n: "file contains the paths of all LAS files to be processed in parallel (default: None)"
    db: "read db file path (default: None)"
    max_diff: "max difference of 5' and 3' coverage (default: None)"
    max_cov: "max coverage of 5' or 3' end (default: None)"
    min_cov: "min coverage of 5' or 3' end (default: None)"
    min_len: "min length of the reads (default: 2500)"
    min_idt: "minimum alignment identity to consider an overlap (default: 90.0)"
    ignore_indels: "ignore indels in calculating alignment identity (-I to LA4Falcon) (default: False)"
    best_n: "output at least best n overlaps on 5' or 3' ends if possible (default: 10)"
    stream: "stream from LA4Falcon, instead of slurping all at once; can save memory for large data (default: False)"
    debug: "single-threaded, plus other aids to debugging (default: False)"
    silent: "suppress cmd reporting on stderr (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_out_fn = "${in_out_fn}"
  }
}
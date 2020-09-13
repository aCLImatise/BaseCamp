version 1.0

task FcOvlpStats {
  input {
    Int? n_core
    File? fof_n
    Boolean? stream
    Boolean? debug
    Boolean? silent
    Int? min_len
    String parallel
  }
  command <<<
    fc_ovlp_stats \
      ~{parallel} \
      ~{if defined(n_core) then ("--n_core " +  '"' + n_core + '"') else ""} \
      ~{if defined(fof_n) then ("--fofn " +  '"' + fof_n + '"') else ""} \
      ~{if (stream) then "--stream" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""}
  >>>
  parameter_meta {
    n_core: "number of processes used for generating consensus; 0 for\\nmain process only (default=4)"
    fof_n: "file contains the path of all LAS file to be processed in"
    stream: "stream from LA4Falcon, instead of slurping all at once;\\ncan save memory for large data"
    debug: "single-threaded, plus other aids to debugging"
    silent: "suppress cmd reporting on stderr"
    min_len: ""
    parallel: "--min_len MIN_LEN  min length of the reads"
  }
  output {
    File out_stdout = stdout()
  }
}
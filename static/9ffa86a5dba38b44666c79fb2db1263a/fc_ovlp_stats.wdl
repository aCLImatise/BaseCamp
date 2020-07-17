version 1.0

task FcOvlpStats {
  input {
    String? n_core
    String? fof_n
    Int? min_len
    Boolean? stream
    Boolean? debug
    Boolean? silent
  }
  command <<<
    fc_ovlp_stats \
      ~{if defined(n_core) then ("--n_core " +  '"' + n_core + '"') else ""} \
      ~{if defined(fof_n) then ("--fofn " +  '"' + fof_n + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{true="--stream" false="" stream} \
      ~{true="--debug" false="" debug} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    n_core: "number of processes used for generating consensus; 0 for main process only (default=4)"
    fof_n: "file contains the path of all LAS file to be processed in parallel"
    min_len: "min length of the reads"
    stream: "stream from LA4Falcon, instead of slurping all at once; can save memory for large data"
    debug: "single-threaded, plus other aids to debugging"
    silent: "suppress cmd reporting on stderr"
  }
}
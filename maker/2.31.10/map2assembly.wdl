version 1.0

task Map2assembly {
  input {
    Boolean? cpus
    Boolean? retry
    Boolean? force
    Boolean? again
    Boolean? quiet
    String genome_dot_fast_a
    String transcripts_dot_fast_a
  }
  command <<<
    map2assembly \
      ~{genome_dot_fast_a} \
      ~{transcripts_dot_fast_a} \
      ~{true="-cpus" false="" cpus} \
      ~{true="-retry" false="" retry} \
      ~{true="-force" false="" force} \
      ~{true="-again" false="" again} \
      ~{true="-quiet" false="" quiet}
  >>>
  parameter_meta {
    cpus: "|c  <integer>  Tells how many cpus to use for BLAST analysis."
    retry: "|r <integer>  Rerun failed contigs up to the specified count."
    force: "|f            Delete old files before running again."
    again: "|a            Run again without deleting files."
    quiet: "|q            Silences most status messages."
    genome_dot_fast_a: ""
    transcripts_dot_fast_a: ""
  }
}
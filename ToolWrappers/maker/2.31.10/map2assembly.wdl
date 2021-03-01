version 1.0

task Map2assembly {
  input {
    Boolean? cpus
    Boolean? retry
    Boolean? force
    Boolean? again
    Boolean? quiet
    String maps
    String genome_dot_fast_a
    String old
    String gene
    String models
    String to
    String a
    String new
    String assembly
    String where
  }
  command <<<
    map2assembly \
      ~{maps} \
      ~{genome_dot_fast_a} \
      ~{old} \
      ~{gene} \
      ~{models} \
      ~{to} \
      ~{a} \
      ~{new} \
      ~{assembly} \
      ~{where} \
      ~{if (cpus) then "-cpus" else ""} \
      ~{if (retry) then "-retry" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (again) then "-again" else ""} \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cpus: "|c  <integer>  Tells how many cpus to use for BLAST analysis."
    retry: "|r <integer>  Rerun failed contigs up to the specified count."
    force: "|f            Delete old files before running again."
    again: "|a            Run again without deleting files."
    quiet: "|q            Silences most status messages."
    maps: ""
    genome_dot_fast_a: ""
    old: ""
    gene: ""
    models: ""
    to: ""
    a: ""
    new: ""
    assembly: ""
    where: ""
  }
  output {
    File out_stdout = stdout()
  }
}
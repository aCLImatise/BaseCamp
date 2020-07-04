version 1.0

task GffCheck {
  input {
    Boolean? qc
    String? verbose
    Boolean? no_progress
    Boolean? profile
    String? seed
    String? threads
    String gff
  }
  command <<<
    gff_check \
      ~{gff} \
      ~{true="-qc" false="" qc} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{true="-noprogress" false="" no_progress} \
      ~{true="-profile" false="" profile} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    qc: ""
    verbose: ""
    no_progress: ""
    profile: ""
    seed: ""
    threads: ""
    gff: ""
  }
}
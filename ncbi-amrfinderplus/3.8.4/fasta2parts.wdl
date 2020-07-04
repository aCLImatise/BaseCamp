version 1.0

task Fasta2parts {
  input {
    Boolean? qc
    String? verbose
    Boolean? no_progress
    Boolean? profile
    String? seed
    String? threads
    String in
    String parts_max
    String dir
  }
  command <<<
    fasta2parts \
      ~{in} \
      ~{parts_max} \
      ~{dir} \
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
    in: ""
    parts_max: ""
    dir: ""
  }
}
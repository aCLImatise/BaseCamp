version 1.0

task Berokka {
  input {
    Boolean? debug
    Boolean? check
    Boolean? test
    Boolean? force
    Boolean? outdir
    Boolean? read_len
    Boolean? fuzz
    Boolean? keep_files
    Boolean? no_an_no
    Boolean? filter
  }
  command <<<
    berokka \
      ~{true="--debug" false="" debug} \
      ~{true="--check" false="" check} \
      ~{true="--test" false="" test} \
      ~{true="--force" false="" force} \
      ~{true="--outdir" false="" outdir} \
      ~{true="--readlen" false="" read_len} \
      ~{true="--fuzz" false="" fuzz} \
      ~{true="--keepfiles" false="" keep_files} \
      ~{true="--noanno" false="" no_an_no} \
      ~{true="--filter" false="" filter}
  >>>
  parameter_meta {
    debug: "Debug info."
    check: "Check dependencies and exit."
    test: "Run a small test and exit."
    force: "Force overwite of existing."
    outdir: "[X]    Output folder []."
    read_len: "[N]   Approximate max read length [60000]."
    fuzz: "[N]      Accept local alignment within --fuzz bp of global [5]."
    keep_files: "Keep intermediate files."
    no_an_no: "Don't annotate FASTA with circular=true."
    filter: "[X]    Contaminants to remove [/tmp/tmpr6cxn_ij/db/controls.fna]."
  }
}
version 1.0

task Berokka {
  input {
    Boolean? debug
    Boolean? check
    Boolean? test
    Boolean? force
    Directory? outdir
    Boolean? read_len
    Boolean? fuzz
    Boolean? keep_files
    Boolean? no_an_no
    Boolean? filter
  }
  command <<<
    berokka \
      ~{if (debug) then "--debug" else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (read_len) then "--readlen" else ""} \
      ~{if (fuzz) then "--fuzz" else ""} \
      ~{if (keep_files) then "--keepfiles" else ""} \
      ~{if (no_an_no) then "--noanno" else ""} \
      ~{if (filter) then "--filter" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    filter: "[X]    Contaminants to remove [/usr/local/db/controls.fna]."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}
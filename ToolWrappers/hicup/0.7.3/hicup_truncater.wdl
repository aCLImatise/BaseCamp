version 1.0

task HicupTruncater {
  input {
    Boolean? config
    Boolean? no_fill
    Directory? outdir
    Boolean? quiet
    Boolean? re_one
    Boolean? sequences
    Boolean? threads
    Boolean? zip
  }
  command <<<
    hicup_truncater \
      ~{if (config) then "--config" else ""} \
      ~{if (no_fill) then "--nofill" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (re_one) then "--re1" else ""} \
      ~{if (sequences) then "--sequences" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (zip) then "--zip" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "Name of the optional configuration file"
    no_fill: "Hi-C protocol did NOT include a fill-in of sticky ends prior to\\nre-ligation and therefore reads shall be truncated at\\nthe restriction site sequence. This feature is only supported for\\nsingle restriction enzyme Hi-C."
    outdir: "Directory to write output files"
    quiet: "Suppress all progress reports"
    re_one: "Restriction enzyme recognition sequence. e.g. A^GATCT,BglII\\nHiCUP can accomodate more than one enzyme and N nucleotides\\ne.g. A^GATCT,BglII:A^AGCTT,HindIII:^GANTC,myRE."
    sequences: "Instead of specifying a restriction enzyme recognition sequence,\\nspecify the ligation sequences directly"
    threads: "Number of threads to use, allowing simultaneous processing  of\\ndifferent files"
    zip: "Compress output using gzip"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}
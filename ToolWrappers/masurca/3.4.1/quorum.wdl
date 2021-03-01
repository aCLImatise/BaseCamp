version 1.0

task Quorum {
  input {
    Boolean? size
    Boolean? threads
    Boolean? prefix
    Boolean? km_er_len
    Boolean? min_q_char
    Boolean? min_quality
    Boolean? window
    Boolean? error
    Boolean? min_count
    Boolean? skip
    Boolean? anchor
    Boolean? anchor_count
    Boolean? contaminant
    Boolean? trim_contaminant
    Boolean? no_discard
    Boolean? paired_files
    Boolean? homo_trim
    Boolean? debug
  }
  command <<<
    quorum \
      ~{if (size) then "--size" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (km_er_len) then "--kmer-len" else ""} \
      ~{if (min_q_char) then "--min-q-char" else ""} \
      ~{if (min_quality) then "--min-quality" else ""} \
      ~{if (window) then "--window" else ""} \
      ~{if (error) then "--error" else ""} \
      ~{if (min_count) then "--min-count" else ""} \
      ~{if (skip) then "--skip" else ""} \
      ~{if (anchor) then "--anchor" else ""} \
      ~{if (anchor_count) then "--anchor-count" else ""} \
      ~{if (contaminant) then "--contaminant" else ""} \
      ~{if (trim_contaminant) then "--trim-contaminant" else ""} \
      ~{if (no_discard) then "--no-discard" else ""} \
      ~{if (paired_files) then "--paired-files" else ""} \
      ~{if (homo_trim) then "--homo-trim" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    size: "Mer database size (default 200M)"
    threads: "Number of threads (default number of cpus)"
    prefix: "Output prefix (default quorum_corrected)"
    km_er_len: "Kmer length (default 24)"
    min_q_char: "Minimum quality char. Usually 33 or 64 (autodetect)"
    min_quality: "Minimum above -q for high quality base (5)"
    window: "Window size for trimming"
    error: "Maximum number of errors in a window"
    min_count: "Minimum count for a k-mer to be good"
    skip: "Number of bases to skip to find anchor kmer"
    anchor: "Numer of good kmer in a row for anchor"
    anchor_count: "Minimum count for an anchor kmer"
    contaminant: "Contaminant sequences"
    trim_contaminant: "Trim sequences with contaminant mers"
    no_discard: "Do not discard reads, output a single N (false)"
    paired_files: "Preserve mate pairs in two files"
    homo_trim: "Trim homo-polymer on 3' end"
    debug: "Display debugging information"
  }
  output {
    File out_stdout = stdout()
  }
}
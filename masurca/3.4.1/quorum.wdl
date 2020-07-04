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
      ~{true="--size" false="" size} \
      ~{true="--threads" false="" threads} \
      ~{true="--prefix" false="" prefix} \
      ~{true="--kmer-len" false="" km_er_len} \
      ~{true="--min-q-char" false="" min_q_char} \
      ~{true="--min-quality" false="" min_quality} \
      ~{true="--window" false="" window} \
      ~{true="--error" false="" error} \
      ~{true="--min-count" false="" min_count} \
      ~{true="--skip" false="" skip} \
      ~{true="--anchor" false="" anchor} \
      ~{true="--anchor-count" false="" anchor_count} \
      ~{true="--contaminant" false="" contaminant} \
      ~{true="--trim-contaminant" false="" trim_contaminant} \
      ~{true="--no-discard" false="" no_discard} \
      ~{true="--paired-files" false="" paired_files} \
      ~{true="--homo-trim" false="" homo_trim} \
      ~{true="--debug" false="" debug}
  >>>
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
}
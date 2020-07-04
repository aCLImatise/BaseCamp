version 1.0

task Isoseq3Collapse {
  input {
    Boolean? min_aln_coverage
    Boolean? min_aln_identity
    Boolean? max_fuzzy_junction
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String out_dot_fast_q
  }
  command <<<
    isoseq3 collapse \
      ~{out_dot_fast_q} \
      ~{true="--min-aln-coverage" false="" min_aln_coverage} \
      ~{true="--min-aln-identity" false="" min_aln_identity} \
      ~{true="--max-fuzzy-junction" false="" max_fuzzy_junction} \
      ~{true="--num-threads" false="" num_threads} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-file" false="" log_file}
  >>>
  parameter_meta {
    min_aln_coverage: "FLOAT  Ignore alignments with less than minimum query read coverage. [0.99]"
    min_aln_identity: "FLOAT  Ignore alignments with less than minimum alignment identity. [0.95]"
    max_fuzzy_junction: "INT    Ignore mismatches or indels shorter than or equal to N. [5]"
    num_threads: "INT    Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    out_dot_fast_q: "STR    Collapsed transcripts in FASTQ"
  }
}
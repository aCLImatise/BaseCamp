version 1.0

task PblayoutMapr2c {
  input {
    Boolean? alias_seq_db
    Boolean? max_diag_diff
    Boolean? secondary_frac
    Boolean? max_dist_from_edge
    Boolean? log_level
    Boolean? log_file
    Int m_four
    String tp
    String ctg_lens
  }
  command <<<
    pblayout map_r2c \
      ~{m_four} \
      ~{tp} \
      ~{ctg_lens} \
      ~{if (alias_seq_db) then "--alias-seqdb" else ""} \
      ~{if (max_diag_diff) then "--max-diag-diff" else ""} \
      ~{if (secondary_frac) then "--secondary-frac" else ""} \
      ~{if (max_dist_from_edge) then "--max-dist-from-edge" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbipa:1.3.2--hee625c5_0"
  }
  parameter_meta {
    alias_seq_db: "STR    Specifies the SeqDB to use for id-to-name lookup for every read in the tiling path."
    max_diag_diff: "INT    Maximum diagonal difference for clustering of read-to-contig projections during mapping.\\n[100]"
    secondary_frac: "FLOAT  If two mappings overlap by more than this fraction, one will be marked as secondary and\\nremoved from output. [0.5]"
    max_dist_from_edge: "INT    For each mapped region, all overlap coordinates within this distance from the\\nleft-/right-most query position will be recollected to find the optimal mapping\\nposition. This allows for some 'jitter' in mapping. [3]"
    log_level: "STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    m_four: "STR    Input M4."
    tp: "STR    Input Tiling path file."
    ctg_lens: "STR    File containing contig lengths. First column is the contigh name, second column contig\\nlength, other columns are ignored. Can be space or tab separated. The .fai files are\\nacceptable."
  }
  output {
    File out_stdout = stdout()
  }
}
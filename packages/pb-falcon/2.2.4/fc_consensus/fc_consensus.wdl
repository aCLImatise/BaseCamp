version 1.0

task FcConsensus {
  input {
    Int? n_core
    Int? min_cov
    Int? min_cov_aln
    Int? max_cov_aln
    Int? min_len_aln
    Int? min_n_read
    Int? max_n_read
    Boolean? trim
    Boolean? output_full
    Boolean? output_multi
    Int? min_idt
    Int? edge_tolerance
    Int? trim_size
    Boolean? allow_external_mapping
    Float? verbose_level
  }
  command <<<
    fc_consensus \
      ~{if defined(n_core) then ("--n-core " +  '"' + n_core + '"') else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_cov_aln) then ("--min-cov-aln " +  '"' + min_cov_aln + '"') else ""} \
      ~{if defined(max_cov_aln) then ("--max-cov-aln " +  '"' + max_cov_aln + '"') else ""} \
      ~{if defined(min_len_aln) then ("--min-len-aln " +  '"' + min_len_aln + '"') else ""} \
      ~{if defined(min_n_read) then ("--min-n-read " +  '"' + min_n_read + '"') else ""} \
      ~{if defined(max_n_read) then ("--max-n-read " +  '"' + max_n_read + '"') else ""} \
      ~{if (trim) then "--trim" else ""} \
      ~{if (output_full) then "--output-full" else ""} \
      ~{if (output_multi) then "--output-multi" else ""} \
      ~{if defined(min_idt) then ("--min-idt " +  '"' + min_idt + '"') else ""} \
      ~{if defined(edge_tolerance) then ("--edge-tolerance " +  '"' + edge_tolerance + '"') else ""} \
      ~{if defined(trim_size) then ("--trim-size " +  '"' + trim_size + '"') else ""} \
      ~{if (allow_external_mapping) then "--allow-external-mapping" else ""} \
      ~{if defined(verbose_level) then ("--verbose-level " +  '"' + verbose_level + '"') else ""}
  >>>
  parameter_meta {
    n_core: "number of processes used for generating consensus; 0 for main process only (default: 24)"
    min_cov: "minimum coverage to break the consensus (default: 6)"
    min_cov_aln: "minimum coverage of alignment data; a seed read with less than MIN_COV_ALN average depth of coverage will be completely ignored (default: 10)"
    max_cov_aln: "maximum coverage of alignment data; a seed read with more than MAX_COV_ALN average depth of coverage of the longest alignments will be capped, excess shorter alignments will be ignored (default: 0)"
    min_len_aln: "minimum length of a sequence in an alignment to be used in consensus; any shorter sequence will be completely ignored (default: 0)"
    min_n_read: "1 + minimum number of reads used in generating the consensus; a seed read with fewer alignments will be completely ignored (default: 10)"
    max_n_read: "1 + maximum number of reads used in generating the consensus (default: 500)"
    trim: "trim the input sequence with k-mer spare dynamic programming to find the mapped range (default: False)"
    output_full: "output uncorrected regions too (default: False)"
    output_multi: "output multi correct regions (default: False)"
    min_idt: "minimum identity of the alignments used for correction (default: 0.7)"
    edge_tolerance: "for trimming, the there is unaligned edge leng > edge_tolerance, ignore the read (default: 1000)"
    trim_size: "the size for triming both ends from initial sparse aligned region (default: 50)"
    allow_external_mapping: "if provided, externally determined mapping coordinates will be used for error correction (default: False)"
    verbose_level: "logging level (WARNING=3, INFO=2, DEBUG=1) (default: 2.0)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
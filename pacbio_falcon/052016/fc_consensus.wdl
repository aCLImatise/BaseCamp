version 1.0

task FcConsensus {
  input {
    String? n_core
    String? local_match_count_window
    String? local_match_count_threshold
    Int? min_cov
    Int? min_cov_aln
    Int? min_len_aln
    Int? max_n_read
    Boolean? trim
    Boolean? output_full
    Boolean? output_multi
    Boolean? output_d_format
    Boolean? output_simple_fast_a_header
    Int? min_idt
    String? edge_tolerance
    String? trim_size
  }
  command <<<
    fc_consensus \
      ~{if defined(n_core) then ("--n_core " +  '"' + n_core + '"') else ""} \
      ~{if defined(local_match_count_window) then ("--local_match_count_window " +  '"' + local_match_count_window + '"') else ""} \
      ~{if defined(local_match_count_threshold) then ("--local_match_count_threshold " +  '"' + local_match_count_threshold + '"') else ""} \
      ~{if defined(min_cov) then ("--min_cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_cov_aln) then ("--min_cov_aln " +  '"' + min_cov_aln + '"') else ""} \
      ~{if defined(min_len_aln) then ("--min_len_aln " +  '"' + min_len_aln + '"') else ""} \
      ~{if defined(max_n_read) then ("--max_n_read " +  '"' + max_n_read + '"') else ""} \
      ~{true="--trim" false="" trim} \
      ~{true="--output_full" false="" output_full} \
      ~{true="--output_multi" false="" output_multi} \
      ~{true="--output_dformat" false="" output_d_format} \
      ~{true="--output_simple_fasta_header" false="" output_simple_fast_a_header} \
      ~{if defined(min_idt) then ("--min_idt " +  '"' + min_idt + '"') else ""} \
      ~{if defined(edge_tolerance) then ("--edge_tolerance " +  '"' + edge_tolerance + '"') else ""} \
      ~{if defined(trim_size) then ("--trim_size " +  '"' + trim_size + '"') else ""}
  >>>
  parameter_meta {
    n_core: "number of processes used for generating consensus; 0 for main process only (default=24)"
    local_match_count_window: "local match window size (obsoleted, no effect)"
    local_match_count_threshold: "local match count threshold (obsoleted, no effect)"
    min_cov: "minimum coverage to break the consensus"
    min_cov_aln: "minimum coverage of alignment data; an alignment with fewer reads will be completely ignored"
    min_len_aln: "minimum length of a sequence in an alignment to be used in consensus; any shorter sequence will be completely ignored"
    max_n_read: "maximum number of reads used in generating the consensus"
    trim: "trim the input sequence with k-mer spare dynamic programming to find the mapped range"
    output_full: "output uncorrected regions too"
    output_multi: "output multi correct regions; implies --output_dformat, unless --output-simple-fasta-header"
    output_d_format: "output daligner compatible header, only work with --output_multi; DEPRECATED and ignored, as this is the default now"
    output_simple_fast_a_header: "Turn off --output_dformat. This was for older (pre spring 2015) DALIGNER. Never needed now."
    min_idt: "minimum identity of the alignments used for correction"
    edge_tolerance: "for trimming, the there is unaligned edge leng > edge_tolerance, ignore the read"
    trim_size: "the size for triming both ends from initial sparse aligned region"
  }
}
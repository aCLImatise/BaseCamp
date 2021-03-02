version 1.0

task FcConsensus {
  input {
    Int? n_core
    Int? local_match_count_window
    String? local_match_count_threshold
    Int? min_cov
    String? min_cov_aln
    Int? min_len_aln
    Int? max_n_read
    Boolean? trim
    Boolean? output_full
    Boolean? output_multi
    Boolean? output_simple_fast_a_header
    String? min_idt
    String? edge_tolerance
    Int? trim_size
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
      ~{if (trim) then "--trim" else ""} \
      ~{if (output_full) then "--output_full" else ""} \
      ~{if (output_multi) then "--output_multi" else ""} \
      ~{if (output_simple_fast_a_header) then "--output_simple_fasta_header" else ""} \
      ~{if defined(min_idt) then ("--min_idt " +  '"' + min_idt + '"') else ""} \
      ~{if defined(edge_tolerance) then ("--edge_tolerance " +  '"' + edge_tolerance + '"') else ""} \
      ~{if defined(trim_size) then ("--trim_size " +  '"' + trim_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    n_core: "number of processes used for generating consensus; 0\\nfor main process only (default=24)"
    local_match_count_window: "local match window size (obsoleted, no effect)"
    local_match_count_threshold: "local match count threshold (obsoleted, no effect)"
    min_cov: "minimum coverage to break the consensus"
    min_cov_aln: "minimum coverage of alignment data; an alignment with\\nfewer reads will be completely ignored"
    min_len_aln: "minimum length of a sequence in an alignment to be\\nused in consensus; any shorter sequence will be\\ncompletely ignored"
    max_n_read: "maximum number of reads used in generating the\\nconsensus"
    trim: "trim the input sequence with k-mer spare dynamic\\nprogramming to find the mapped range"
    output_full: "output uncorrected regions too"
    output_multi: "output multi correct regions; implies"
    output_simple_fast_a_header: "Turn off --output_dformat. This was for older (pre\\nspring 2015) DALIGNER. Never needed now."
    min_idt: "minimum identity of the alignments used for correction"
    edge_tolerance: "for trimming, the there is unaligned edge leng >\\nedge_tolerance, ignore the read"
    trim_size: "the size for triming both ends from initial sparse\\naligned region\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
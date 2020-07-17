version 1.0

task DalignerP {
  input {
    Boolean? kmer_size_must
    Boolean? look_kmers_averlapping
    Boolean? ignore_kmers_occur
    Boolean? use_only_gb
    Boolean? look_alignments_e
    Boolean? look_alignments_l
    Boolean? trace_point_spacing
    Boolean? hgap_option_align
    Boolean? use_t_threads
    Boolean? block_level_sorts
    Boolean? soft_mask_blocks
    Boolean? atgc_biased_compensate
    Boolean? verbose_mode_output
    Boolean? sort_areadaposition_pairs
    Boolean? compare_subjet_target
    Boolean? compare_reads_themselves
    Boolean? va_bai
    String d_aligner
  }
  command <<<
    daligner_p \
      ~{d_aligner} \
      ~{true="-k" false="" kmer_size_must} \
      ~{true="-w" false="" look_kmers_averlapping} \
      ~{true="-t" false="" ignore_kmers_occur} \
      ~{true="-M" false="" use_only_gb} \
      ~{true="-e" false="" look_alignments_e} \
      ~{true="-l" false="" look_alignments_l} \
      ~{true="-s" false="" trace_point_spacing} \
      ~{true="-H" false="" hgap_option_align} \
      ~{true="-T" false="" use_t_threads} \
      ~{true="-P" false="" block_level_sorts} \
      ~{true="-m" false="" soft_mask_blocks} \
      ~{true="-b" false="" atgc_biased_compensate} \
      ~{true="-v" false="" verbose_mode_output} \
      ~{true="-a" false="" sort_areadaposition_pairs} \
      ~{true="-A" false="" compare_subjet_target} \
      ~{true="-I" false="" compare_reads_themselves} \
      ~{true="-vabAI" false="" va_bai}
  >>>
  parameter_meta {
    kmer_size_must: ": k-mer size (must be <= 32)."
    look_kmers_averlapping: ": Look for k-mers in averlapping bands of size 2^-w."
    ignore_kmers_occur: ": Ignore k-mers that occur >= -t times in a block."
    use_only_gb: ": Use only -M GB of memory by ignoring most frequent k-mers."
    look_alignments_e: ": Look for alignments with -e percent similarity."
    look_alignments_l: ": Look for alignments of length >= -l."
    trace_point_spacing: ": The trace point spacing for encoding alignments."
    hgap_option_align: ": HGAP option: align only target reads of length >= -H."
    use_t_threads: ": Use -T threads."
    block_level_sorts: ": Do block level sorts and merges in directory -P."
    soft_mask_blocks: ": Soft mask the blocks with the specified mask."
    atgc_biased_compensate: ": For AT/GC biased data, compensate k-mer counts (deprecated)."
    verbose_mode_output: ": Verbose mode, output statistics as proceed."
    sort_areadaposition_pairs: ": sort .las by A-read,A-position pairs for map usecase off => sort .las by A,B-read pairs for overlap piles"
    compare_subjet_target: ": Compare subjet to target, but not vice versa."
    compare_reads_themselves: ": Compare reads to themselves"
    va_bai: ""
    d_aligner: ""
  }
}
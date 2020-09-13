version 1.0

task DalignerP {
  input {
    Boolean? kmer_size_must
    Boolean? look_kmers_w
    Boolean? ignore_kmers_occur
    Boolean? use_only_gb
    Boolean? look_alignments_e
    Boolean? look_alignments_l
    Boolean? trace_point_spacing
    Boolean? hgap_option_align
    Boolean? use_t_threads
    Boolean? block_level_sorts
    Boolean? soft_mask_blocks
    Boolean? atgc_biased_counts
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
      ~{if (kmer_size_must) then "-k" else ""} \
      ~{if (look_kmers_w) then "-w" else ""} \
      ~{if (ignore_kmers_occur) then "-t" else ""} \
      ~{if (use_only_gb) then "-M" else ""} \
      ~{if (look_alignments_e) then "-e" else ""} \
      ~{if (look_alignments_l) then "-l" else ""} \
      ~{if (trace_point_spacing) then "-s" else ""} \
      ~{if (hgap_option_align) then "-H" else ""} \
      ~{if (use_t_threads) then "-T" else ""} \
      ~{if (block_level_sorts) then "-P" else ""} \
      ~{if (soft_mask_blocks) then "-m" else ""} \
      ~{if (atgc_biased_counts) then "-b" else ""} \
      ~{if (verbose_mode_output) then "-v" else ""} \
      ~{if (sort_areadaposition_pairs) then "-a" else ""} \
      ~{if (compare_subjet_target) then "-A" else ""} \
      ~{if (compare_reads_themselves) then "-I" else ""} \
      ~{if (va_bai) then "-vabAI" else ""}
  >>>
  parameter_meta {
    kmer_size_must: ": k-mer size (must be <= 32)."
    look_kmers_w: ": Look for k-mers in averlapping bands of size 2^-w."
    ignore_kmers_occur: ": Ignore k-mers that occur >= -t times in a block."
    use_only_gb: ": Use only -M GB of memory by ignoring most frequent k-mers."
    look_alignments_e: ": Look for alignments with -e percent similarity."
    look_alignments_l: ": Look for alignments of length >= -l."
    trace_point_spacing: ": The trace point spacing for encoding alignments."
    hgap_option_align: ": HGAP option: align only target reads of length >= -H."
    use_t_threads: ": Use -T threads."
    block_level_sorts: ": Do block level sorts and merges in directory -P."
    soft_mask_blocks: ": Soft mask the blocks with the specified mask."
    atgc_biased_counts: ": For AT/GC biased data, compensate k-mer counts (deprecated)."
    verbose_mode_output: ": Verbose mode, output statistics as proceed."
    sort_areadaposition_pairs: ": sort .las by A-read,A-position pairs for map usecase\\noff => sort .las by A,B-read pairs for overlap piles"
    compare_subjet_target: ": Compare subjet to target, but not vice versa."
    compare_reads_themselves: ": Compare reads to themselves"
    va_bai: ""
    d_aligner: ""
  }
  output {
    File out_stdout = stdout()
  }
}
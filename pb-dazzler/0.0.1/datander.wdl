version 1.0

task Datander {
  input {
    Boolean? verbose_mode_output
    Boolean? kmer_size_must
    Boolean? look_kmers_averlapping
    Boolean? look_alignments_e
    Boolean? look_alignments_l
    Boolean? use_s_trace
    Boolean? use_t_threads
    Boolean? first_level_sort
  }
  command <<<
    datander \
      ~{true="-v" false="" verbose_mode_output} \
      ~{true="-k" false="" kmer_size_must} \
      ~{true="-w" false="" look_kmers_averlapping} \
      ~{true="-e" false="" look_alignments_e} \
      ~{true="-l" false="" look_alignments_l} \
      ~{true="-s" false="" use_s_trace} \
      ~{true="-T" false="" use_t_threads} \
      ~{true="-P" false="" first_level_sort}
  >>>
  parameter_meta {
    verbose_mode_output: ": Verbose mode, output statistics as proceed."
    kmer_size_must: ": k-mer size (must be <= 32)."
    look_kmers_averlapping: ": Look for k-mers in averlapping bands of size 2^-w."
    look_alignments_e: ": Look for alignments with -e percent similarity."
    look_alignments_l: ": Look for alignments of length >= -l."
    use_s_trace: ": Use -s as the trace point spacing for encoding alignments."
    use_t_threads: ": Use -T threads."
    first_level_sort: ": Do first level sort and merge in directory -P."
  }
}
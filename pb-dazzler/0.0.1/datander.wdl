version 1.0

task Datander {
  input {
    Boolean? verbose_mode_output
    Boolean? kmer_size_must
    Boolean? look_kmers_w
    Boolean? look_alignments_e
    Boolean? look_alignments_l
    Boolean? use_s_spacing
    Boolean? use_t_threads
    Boolean? first_level_sort
  }
  command <<<
    datander \
      ~{if (verbose_mode_output) then "-v" else ""} \
      ~{if (kmer_size_must) then "-k" else ""} \
      ~{if (look_kmers_w) then "-w" else ""} \
      ~{if (look_alignments_e) then "-e" else ""} \
      ~{if (look_alignments_l) then "-l" else ""} \
      ~{if (use_s_spacing) then "-s" else ""} \
      ~{if (use_t_threads) then "-T" else ""} \
      ~{if (first_level_sort) then "-P" else ""}
  >>>
  parameter_meta {
    verbose_mode_output: ": Verbose mode, output statistics as proceed."
    kmer_size_must: ": k-mer size (must be <= 32)."
    look_kmers_w: ": Look for k-mers in averlapping bands of size 2^-w."
    look_alignments_e: ": Look for alignments with -e percent similarity."
    look_alignments_l: ": Look for alignments of length >= -l."
    use_s_spacing: ": Use -s as the trace point spacing for encoding alignments."
    use_t_threads: ": Use -T threads."
    first_level_sort: ": Do first level sort and merge in directory -P."
  }
  output {
    File out_stdout = stdout()
  }
}
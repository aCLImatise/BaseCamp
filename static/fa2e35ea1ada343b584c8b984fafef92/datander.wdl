version 1.0

task Datander {
  input {
    Boolean? verbose_mode_output
    Boolean? kmer_size_be
    Boolean? look_kmers_averlapping
    Boolean? look_percent_similarity
    Boolean? look_alignments_length
    Boolean? use_s_trace
    Boolean? use_t_threads
    Boolean? first_level_sort
  }
  command <<<
    datander \
      ~{if (verbose_mode_output) then "-v" else ""} \
      ~{if (kmer_size_be) then "-k" else ""} \
      ~{if (look_kmers_averlapping) then "-w" else ""} \
      ~{if (look_percent_similarity) then "-e" else ""} \
      ~{if (look_alignments_length) then "-l" else ""} \
      ~{if (use_s_trace) then "-s" else ""} \
      ~{if (use_t_threads) then "-T" else ""} \
      ~{if (first_level_sort) then "-P" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose_mode_output: ": Verbose mode, output statistics as proceed."
    kmer_size_be: ": k-mer size (must be <= 32)."
    look_kmers_averlapping: ": Look for k-mers in averlapping bands of size 2^-w."
    look_percent_similarity: ": Look for alignments with -e percent similarity."
    look_alignments_length: ": Look for alignments of length >= -l."
    use_s_trace: ": Use -s as the trace point spacing for encoding alignments."
    use_t_threads: ": Use -T threads."
    first_level_sort: ": Do first level sort and merge in directory -P."
  }
  output {
    File out_stdout = stdout()
  }
}
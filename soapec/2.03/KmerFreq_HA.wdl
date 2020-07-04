version 1.0

task KmerFreqHA {
  input {
    Int? set_size_default
    String? set_input_read
    String? set_output_prefix
    Int? set_initial_size
    Int? set_number_default
    Int? set_maximum_read
    Int? set_read_length
    Int? set_ignored_length_beginning_set_option
    Int? set_ignored_length_end_set_option
    Int? set_total_bases
    Int? set_use_filter
    Int? set_size_note
    Int? set_kmerfreq_analysis
    String? option
  }
  command <<<
    KmerFreq_HA \
      ~{option} \
      ~{if defined(set_size_default) then ("-k " +  '"' + set_size_default + '"') else ""} \
      ~{if defined(set_input_read) then ("-l " +  '"' + set_input_read + '"') else ""} \
      ~{if defined(set_output_prefix) then ("-p " +  '"' + set_output_prefix + '"') else ""} \
      ~{if defined(set_initial_size) then ("-i " +  '"' + set_initial_size + '"') else ""} \
      ~{if defined(set_number_default) then ("-t " +  '"' + set_number_default + '"') else ""} \
      ~{if defined(set_maximum_read) then ("-L " +  '"' + set_maximum_read + '"') else ""} \
      ~{if defined(set_read_length) then ("-r " +  '"' + set_read_length + '"') else ""} \
      ~{if defined(set_ignored_length_beginning_set_option) then ("-a " +  '"' + set_ignored_length_beginning_set_option + '"') else ""} \
      ~{if defined(set_ignored_length_end_set_option) then ("-d " +  '"' + set_ignored_length_end_set_option + '"') else ""} \
      ~{if defined(set_total_bases) then ("-g " +  '"' + set_total_bases + '"') else ""} \
      ~{if defined(set_use_filter) then ("-f " +  '"' + set_use_filter + '"') else ""} \
      ~{if defined(set_size_note) then ("-s " +  '"' + set_size_note + '"') else ""} \
      ~{if defined(set_kmerfreq_analysis) then ("-b " +  '"' + set_kmerfreq_analysis + '"') else ""}
  >>>
  parameter_meta {
    set_size_default: "Set kmer size(13~27), default=17."
    set_input_read: "Set input read file list."
    set_output_prefix: "Set the output prefix, default=output."
    set_initial_size: "Set initial size of hash table, default=50000000."
    set_number_default: "Set thread number, default=1."
    set_maximum_read: "Set maximum read length, default=100."
    set_read_length: "Set read length used to get kmers, default=read's real length. Note: the max read length to get kmer frequency spectrum."
    set_ignored_length_beginning_set_option: "Set ignored length of the beginning of a read, default=0. Note: set this option when sequencing quality is low in the beginning of reads."
    set_ignored_length_end_set_option: "Set ignored length of the end of a read, default=0 Note: set this option when sequencing quality is low in the end of reads."
    set_total_bases: "Set total bases number used to get kmers, default=all input bases. Note: when sequencing depth is too much, you can set this option, about 30X data bases is preferred."
    set_use_filter: "Set whether use Bloom filter to reduce memory usage, 0:no; 1:yes; default=0. Note: reduce memeory usage by using Bloom filter to reduce kmer which frequency lower than(<=) 2."
    set_size_note: "Set the Bloom array size, default=1000000000. Note: you can set by this formula:(genome_size+genome_size*coverage*error_rate*kmer_size)*5/4."
    set_kmerfreq_analysis: "Set the kmer-freq analysis divide into how many steps(=1, 2, 4, 8), default =1. Note: the more step, the less memeory usage, but need more time."
    option: ""
  }
}
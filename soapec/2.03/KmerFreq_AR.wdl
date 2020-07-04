version 1.0

task KmerFreqAR {
  input {
    Int? set_size_note
    Int? set_size_set
    Float? set_min_precision
    Int? set_number_default
    Int? set_ascii_shift
    Int? set_output_kmers
    Int? set_total_bases
    String? set_output_prefix
    String? option
    String reads_files_list
  }
  command <<<
    KmerFreq_AR \
      ~{option} \
      ~{reads_files_list} \
      ~{if defined(set_size_note) then ("-k " +  '"' + set_size_note + '"') else ""} \
      ~{if defined(set_size_set) then ("-s " +  '"' + set_size_set + '"') else ""} \
      ~{if defined(set_min_precision) then ("-c " +  '"' + set_min_precision + '"') else ""} \
      ~{if defined(set_number_default) then ("-t " +  '"' + set_number_default + '"') else ""} \
      ~{if defined(set_ascii_shift) then ("-q " +  '"' + set_ascii_shift + '"') else ""} \
      ~{if defined(set_output_kmers) then ("-m " +  '"' + set_output_kmers + '"') else ""} \
      ~{if defined(set_total_bases) then ("-b " +  '"' + set_total_bases + '"') else ""} \
      ~{if defined(set_output_prefix) then ("-p " +  '"' + set_output_prefix + '"') else ""}
  >>>
  parameter_meta {
    set_size_note: "Set the kmer size, default=17. Note: when k=17, kmer theoretic number is 4^17 = 16G, store 1 byte for a kmer, the kmer frequency spectrum will use  16G memory(k=16, 4G; k=18, 64G)."
    set_size_set: "Set the size of space-seed in kmer, default=0. Note: for consecutive kmer, use default value: 0; for space-kmer, set this  option and make sure it is set to be one even number when kmer size is  odd number(for reverse and complement kmer). When kmer size is one even number, the space-kmer format will be like this(for k=10, s=5): 'ATTCG-----GTACG'. When kmer size is odd number, the space-kmer format will be like this(for k=11, s=4):  'ATTCG--A--GTACG'."
    set_min_precision: "Set min precision rate for kmer, default=-1. Note: program caculate the precision of kmer base on the quality score, set between 0~0.99, or -1 for unrestrained."
    set_number_default: "Set the thread number, default=1. Note: the more thread number, the high speed, however, this should be less than  the number of CPU cores."
    set_ascii_shift: "Set the ASCII shift of the quality value(Q_SHIFT), default=64. Note: usually 64 or 33 for Illumina data."
    set_output_kmers: "Set whether to output kmers depth file, 1:yes, 0:no, default=1. Note: if you just want to get the distribution curve of kmer frequency, set '-m 0'."
    set_total_bases: "Set total bases number used to get kmers, default: all the bases of read files. Note: when sequencing depth is too much, you can set this option, about 30X data bases is preferred."
    set_output_prefix: "Set the output prefix, default=output. Note: often use species name as prefix."
    option: ""
    reads_files_list: ""
  }
}
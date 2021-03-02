version 1.0

task KmerFreqHA {
  input {
    Int? set_kmer_size
    Int? set_read_length
    Int? a
    Int? d
    Int? set_total_number
    File? set_input_read
    String? set_output_prefix
    Int? set_initial_size
    Int? set_thread_number
    Int? set_maximum_read
    Int? set_use_filter
    Int? set_bloom_size
    Int? set_kmerfreq_analysis
    Int usage__kmerfreqha
  }
  command <<<
    KmerFreq_HA \
      ~{usage__kmerfreqha} \
      ~{if defined(set_kmer_size) then ("-k " +  '"' + set_kmer_size + '"') else ""} \
      ~{if defined(set_read_length) then ("-r " +  '"' + set_read_length + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(set_total_number) then ("-g " +  '"' + set_total_number + '"') else ""} \
      ~{if defined(set_input_read) then ("-l " +  '"' + set_input_read + '"') else ""} \
      ~{if defined(set_output_prefix) then ("-p " +  '"' + set_output_prefix + '"') else ""} \
      ~{if defined(set_initial_size) then ("-i " +  '"' + set_initial_size + '"') else ""} \
      ~{if defined(set_thread_number) then ("-t " +  '"' + set_thread_number + '"') else ""} \
      ~{if defined(set_maximum_read) then ("-L " +  '"' + set_maximum_read + '"') else ""} \
      ~{if defined(set_use_filter) then ("-f " +  '"' + set_use_filter + '"') else ""} \
      ~{if defined(set_bloom_size) then ("-s " +  '"' + set_bloom_size + '"') else ""} \
      ~{if defined(set_kmerfreq_analysis) then ("-b " +  '"' + set_kmerfreq_analysis + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_kmer_size: "Set kmer size(13~27), default=17.\\nNote: kmer size should be set between 13 and 27."
    set_read_length: "Set read length used to get kmers, default=read's real length.\\nNote: the max read length to get kmer frequency spectrum."
    a: "Set ignored length of the beginning of a read, default=0.\\nNote: set this option when sequencing quality is low in the beginning of reads."
    d: "Set ignored length of the end of a read, default=0\\nNote: set this option when sequencing quality is low in the end of reads."
    set_total_number: "Set total bases number used to get kmers, default=all input bases.\\nNote: when sequencing depth is too much, you can set this option, about 30X\\ndata bases is preferred."
    set_input_read: "Set input read file list.\\nNote: no default value, the address list of reads file, each reads files take a line."
    set_output_prefix: "Set the output prefix, default=output.\\nNote: often use species name as prefix."
    set_initial_size: "Set initial size of hash table, default=50000000.\\nNote: this is the initial size, and program will enlarge the HashSet memory\\nspace (*2 each time) when memeory is insufficient."
    set_thread_number: "Set thread number, default=1.\\nNote: the more thread number, the high speed, however, this should be less than\\nthe number of CPU cores."
    set_maximum_read: "Set maximum read length, default=100.\\nNote: program will alloc memeory buffer base on read length, so you should set the\\nmaximun read length in the read files."
    set_use_filter: "Set whether use Bloom filter to reduce memory usage, 0:no; 1:yes; default=0.\\nNote: reduce memeory usage by using Bloom filter to reduce kmer which frequency lower than(<=) 2."
    set_bloom_size: "Set the Bloom array size, default=1000000000.\\nNote: you can set by this formula:(genome_size+genome_size*coverage*error_rate*kmer_size)*5/4."
    set_kmerfreq_analysis: "Set the kmer-freq analysis divide into how many steps(=1, 2, 4, 8), default =1.\\nNote: the more step, the less memeory usage, but need more time."
    usage__kmerfreqha: "Usage:  KmerFreq_HA [OPTION]"
  }
  output {
    File out_stdout = stdout()
  }
}
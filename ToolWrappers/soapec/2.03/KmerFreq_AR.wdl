version 1.0

task KmerFreqAR {
  input {
    Int? set_kmer_size
    Int? set_size_defaultnote
    Float? set_min_precision
    Int? set_thread_number
    Int? set_ascii_shift
    File? set_output_kmers
    Int? set_total_number
    String? set_output_prefix
    Int usage_kmerfreqar_readsfileslist
  }
  command <<<
    KmerFreq_AR \
      ~{usage_kmerfreqar_readsfileslist} \
      ~{if defined(set_kmer_size) then ("-k " +  '"' + set_kmer_size + '"') else ""} \
      ~{if defined(set_size_defaultnote) then ("-s " +  '"' + set_size_defaultnote + '"') else ""} \
      ~{if defined(set_min_precision) then ("-c " +  '"' + set_min_precision + '"') else ""} \
      ~{if defined(set_thread_number) then ("-t " +  '"' + set_thread_number + '"') else ""} \
      ~{if defined(set_ascii_shift) then ("-q " +  '"' + set_ascii_shift + '"') else ""} \
      ~{if defined(set_output_kmers) then ("-m " +  '"' + set_output_kmers + '"') else ""} \
      ~{if defined(set_total_number) then ("-b " +  '"' + set_total_number + '"') else ""} \
      ~{if defined(set_output_prefix) then ("-p " +  '"' + set_output_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_kmer_size: "Set the kmer size, default=17.\\nNote: when k=17, kmer theoretic number is 4^17 = 16G,\\nstore 1 byte for a kmer, the kmer frequency spectrum will use\\n16G memory(k=16, 4G; k=18, 64G)."
    set_size_defaultnote: "Set the size of space-seed in kmer, default=0.\\nNote: for consecutive kmer, use default value: 0; for space-kmer, set this\\noption and make sure it is set to be one even number when kmer size is\\nodd number(for reverse and complement kmer). When kmer size is one even number,\\nthe space-kmer format will be like this(for k=10, s=5): 'ATTCG-----GTACG'.\\nWhen kmer size is odd number, the space-kmer format will be like this(for k=11, s=4):\\n'ATTCG--A--GTACG'."
    set_min_precision: "Set min precision rate for kmer, default=-1.\\nNote: program caculate the precision of kmer base on the quality score,\\nset between 0~0.99, or -1 for unrestrained."
    set_thread_number: "Set the thread number, default=1.\\nNote: the more thread number, the high speed, however, this should be less than\\nthe number of CPU cores."
    set_ascii_shift: "Set the ASCII shift of the quality value(Q_SHIFT), default=64.\\nNote: usually 64 or 33 for Illumina data."
    set_output_kmers: "Set whether to output kmers depth file, 1:yes, 0:no, default=1.\\nNote: if you just want to get the distribution curve of kmer frequency, set '-m 0'."
    set_total_number: "Set total bases number used to get kmers, default: all the bases of read files.\\nNote: when sequencing depth is too much, you can set this option, about 30X\\ndata bases is preferred."
    set_output_prefix: "Set the output prefix, default=output.\\nNote: often use species name as prefix."
    usage_kmerfreqar_readsfileslist: "Usage:  KmerFreq_AR [OPTION] <reads_files_list>"
  }
  output {
    File out_stdout = stdout()
    File out_set_output_kmers = "${in_set_output_kmers}"
  }
}
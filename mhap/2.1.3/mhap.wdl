version 1.0

task Mhap {
  input {
    Boolean? default_kmer_filter
    Boolean? default_kmer_size
    Boolean? only_directory_directory
    Boolean? default_usage_fasta
    Boolean? only_fasta_file
  }
  command <<<
    mhap \
      ~{true="-f" false="" default_kmer_filter} \
      ~{true="-k" false="" default_kmer_size} \
      ~{true="-p" false="" only_directory_directory} \
      ~{true="-q" false="" default_usage_fasta} \
      ~{true="-s" false="" only_fasta_file}
  >>>
  parameter_meta {
    default_kmer_filter: ", default = \"\" k-mer filter file used for filtering out highly repetative k-mers. Must be sorted in descending order of frequency (second column)."
    default_kmer_size: ", default = 16 [int], k-mer size used for MinHashing. The k-mer size for second stage filter is seperate, and can also be modified."
    only_directory_directory: ", default = \"\" Usage 2 only. The directory containing FASTA files that should be converted to binary format for storage."
    default_usage_fasta: ", default = \"\" Usage 1: The FASTA file of reads, or a directory of files, that will be compared to the set of reads in the box (see -s). Usage 2: The output directory for the binary formatted dat files."
    only_fasta_file: ", default = \"\" Usage 1 only. The FASTA or binary dat file (see Usage 2) of reads that will be stored in a box, and that all subsequent reads will be compared to."
  }
}
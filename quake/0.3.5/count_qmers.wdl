version 1.0

task CountQmers {
  input {
    File? fastq_file_count
    Int? length_of_kmer
    String? gigabyte_limit_ram
    Int? define_hash_table
    Int? maximum_kmer_count
    Int? quality_value_ascii
  }
  command <<<
    count_qmers \
      ~{if defined(fastq_file_count) then ("-f " +  '"' + fastq_file_count + '"') else ""} \
      ~{if defined(length_of_kmer) then ("-k " +  '"' + length_of_kmer + '"') else ""} \
      ~{if defined(gigabyte_limit_ram) then ("-l " +  '"' + gigabyte_limit_ram + '"') else ""} \
      ~{if defined(define_hash_table) then ("-t " +  '"' + define_hash_table + '"') else ""} \
      ~{if defined(maximum_kmer_count) then ("-m " +  '"' + maximum_kmer_count + '"') else ""} \
      ~{if defined(quality_value_ascii) then ("-q " +  '"' + quality_value_ascii + '"') else ""}
  >>>
  parameter_meta {
    fastq_file_count: "fastq file to count"
    length_of_kmer: "Length of kmer"
    gigabyte_limit_ram: "Gigabyte limit on RAM. If limited, the output will\\ncontain redundancies"
    define_hash_table: "Define hash table size explicitly. [Default: chosen via k]"
    maximum_kmer_count: "Maximum k-mer count. [Default: 500]"
    quality_value_ascii: "Quality value ascii scale, generally 64 or 33.  If\\nnot specified, it will guess.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
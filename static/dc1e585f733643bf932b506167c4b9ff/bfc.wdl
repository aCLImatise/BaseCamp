version 1.0

task Bfc {
  input {
    Float? approx_genome_size
    Int? kmer_length
    Int? number_of_threads
    Int? set_bloom_size
    Int? use_int_functions
    File? dump_hash_table
    Boolean? skip_error_correction
    Boolean? refine_bfccorrected_reads
    File? restore_hash_table
    Int? no_more_ec
    Int? min_kmer_coverage
    Boolean? force_fasta_output
    Boolean? drop_reads_containing
    Boolean? show_version_number
    String to_count_dot_fq
    String? to_correct_dot_fq
  }
  command <<<
    bfc \
      ~{to_count_dot_fq} \
      ~{to_correct_dot_fq} \
      ~{if defined(approx_genome_size) then ("-s " +  '"' + approx_genome_size + '"') else ""} \
      ~{if defined(kmer_length) then ("-k " +  '"' + kmer_length + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(set_bloom_size) then ("-b " +  '"' + set_bloom_size + '"') else ""} \
      ~{if defined(use_int_functions) then ("-H " +  '"' + use_int_functions + '"') else ""} \
      ~{if defined(dump_hash_table) then ("-d " +  '"' + dump_hash_table + '"') else ""} \
      ~{if (skip_error_correction) then "-E" else ""} \
      ~{if (refine_bfccorrected_reads) then "-R" else ""} \
      ~{if defined(restore_hash_table) then ("-r " +  '"' + restore_hash_table + '"') else ""} \
      ~{if defined(no_more_ec) then ("-w " +  '"' + no_more_ec + '"') else ""} \
      ~{if defined(min_kmer_coverage) then ("-c " +  '"' + min_kmer_coverage + '"') else ""} \
      ~{if (force_fasta_output) then "-Q" else ""} \
      ~{if (drop_reads_containing) then "-1" else ""} \
      ~{if (show_version_number) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    approx_genome_size: "approx genome size (k/m/g allowed; change -k and -b) [unset]"
    kmer_length: "k-mer length [33]"
    number_of_threads: "number of threads [1]"
    set_bloom_size: "set Bloom filter size to pow(2,INT) bits [33]"
    use_int_functions: "use INT hash functions for Bloom filter [4]"
    dump_hash_table: "dump hash table to FILE [null]"
    skip_error_correction: "skip error correction"
    refine_bfccorrected_reads: "refine bfc-corrected reads"
    restore_hash_table: "restore hash table from FILE [null]"
    no_more_ec: "no more than 5 ec or 2 highQ ec in INT-bp window [10]"
    min_kmer_coverage: "min k-mer coverage [3]"
    force_fasta_output: "force FASTA output"
    drop_reads_containing: "drop reads containing unique k-mers"
    show_version_number: "show version number"
    to_count_dot_fq: ""
    to_correct_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}
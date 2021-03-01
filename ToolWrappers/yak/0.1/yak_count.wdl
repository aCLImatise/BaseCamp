version 1.0

task YakCount {
  input {
    Int? kmer_size
    Int? prefix_length
    Int? set_bloom_size
    Int? use_int_functions
    Int? number_worker_threads
    File? dump_count_table
    Int? chunk_size
    String? in_dot_fa
  }
  command <<<
    yak count \
      ~{in_dot_fa} \
      ~{if defined(kmer_size) then ("-k " +  '"' + kmer_size + '"') else ""} \
      ~{if defined(prefix_length) then ("-p " +  '"' + prefix_length + '"') else ""} \
      ~{if defined(set_bloom_size) then ("-b " +  '"' + set_bloom_size + '"') else ""} \
      ~{if defined(use_int_functions) then ("-H " +  '"' + use_int_functions + '"') else ""} \
      ~{if defined(number_worker_threads) then ("-t " +  '"' + number_worker_threads + '"') else ""} \
      ~{if defined(dump_count_table) then ("-o " +  '"' + dump_count_table + '"') else ""} \
      ~{if defined(chunk_size) then ("-K " +  '"' + chunk_size + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/yak:0.1--hed695b0_0"
  }
  parameter_meta {
    kmer_size: "k-mer size [31]"
    prefix_length: "prefix length [10]"
    set_bloom_size: "set Bloom filter size to 2**INT bits; 0 to disable [0]"
    use_int_functions: "use INT hash functions for Bloom filter [4]"
    number_worker_threads: "number of worker threads [4]"
    dump_count_table: "dump the count hash table to FILE []"
    chunk_size: "chunk size [100m]"
    in_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}
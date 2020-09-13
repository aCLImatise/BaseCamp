version 1.0

task HmmgsBuild {
  input {
    String read_file
    String bloom_out
    String km_er_size
    Int bloom_size_log_two
    String cut_off
    String hash_count
    Int bit_set_size_log_two
  }
  command <<<
    hmmgs build \
      ~{read_file} \
      ~{bloom_out} \
      ~{km_er_size} \
      ~{bloom_size_log_two} \
      ~{cut_off} \
      ~{hash_count} \
      ~{bit_set_size_log_two}
  >>>
  parameter_meta {
    read_file: "fasta or fastq files containing the reads to build the graph from "
    bloom_out: "file to write the bloom filter to "
    km_er_size: "should be multiple of 3, (recommend 45, maximum 63) "
    bloom_size_log_two: "the size of the bloom filter (or memory needed) is 2^bloomSizeLog2 bits, increase if the predicted false positive rate is greater than 1%"
    cut_off: "minimum number of times a kmer has to be observed in SEQFILE to be included in the final bloom filter"
    hash_count: "number of hash functions, default 4"
    bit_set_size_log_two: "the size of one bitSet 2^bitsetSizeLog2, recommend 30, usually not changed"
  }
  output {
    File out_stdout = stdout()
  }
}
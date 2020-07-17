version 1.0

task AbruijnRepeat {
  input {
    String? kmer_size_
    Int? minimum_overlap_reads
    Boolean? enable_debug_output
    String? output_log_file
    String? number_parallel_threads
    String out_assembly
  }
  command <<<
    abruijn-repeat \
      ~{out_assembly} \
      ~{if defined(kmer_size_) then ("-k " +  '"' + kmer_size_ + '"') else ""} \
      ~{if defined(minimum_overlap_reads) then ("-v " +  '"' + minimum_overlap_reads + '"') else ""} \
      ~{true="-d" false="" enable_debug_output} \
      ~{if defined(output_log_file) then ("-l " +  '"' + output_log_file + '"') else ""} \
      ~{if defined(number_parallel_threads) then ("-t " +  '"' + number_parallel_threads + '"') else ""}
  >>>
  parameter_meta {
    kmer_size_: "k-mer size [default = 15] "
    minimum_overlap_reads: "minimum overlap between reads [default = 5000] "
    enable_debug_output: "enable debug output [default = false] "
    output_log_file: "output log to file [default = not set] "
    number_parallel_threads: "number of parallel threads [default = 1] "
    out_assembly: "path to output assembly"
  }
}
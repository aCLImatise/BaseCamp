version 1.0

task Abruijnrepeat {
  input {
    Int? kmer_size
    Int? minimum_overlap_reads
    Boolean? enable_debug_output
    File? output_log_file
    Int? number_parallel_threads
    String in_assembly
    String out_assembly
  }
  command <<<
    abruijn_repeat \
      ~{in_assembly} \
      ~{out_assembly} \
      ~{if defined(kmer_size) then ("-k " +  '"' + kmer_size + '"') else ""} \
      ~{if defined(minimum_overlap_reads) then ("-v " +  '"' + minimum_overlap_reads + '"') else ""} \
      ~{if (enable_debug_output) then "-d" else ""} \
      ~{if defined(output_log_file) then ("-l " +  '"' + output_log_file + '"') else ""} \
      ~{if defined(number_parallel_threads) then ("-t " +  '"' + number_parallel_threads + '"') else ""}
  >>>
  parameter_meta {
    kmer_size: "k-mer size [default = 15]"
    minimum_overlap_reads: "minimum overlap between reads [default = 5000]"
    enable_debug_output: "enable debug output [default = false]"
    output_log_file: "output log to file [default = not set]"
    number_parallel_threads: "number of parallel threads [default = 1]"
    in_assembly: "path to input assembly"
    out_assembly: "path to output assembly"
  }
  output {
    File out_stdout = stdout()
    File out_output_log_file = "${in_output_log_file}"
  }
}
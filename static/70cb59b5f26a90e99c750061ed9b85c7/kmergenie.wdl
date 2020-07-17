version 1.0

task Kmergenie {
  input {
    Boolean? diploid
    Boolean? one_pass
    String? largest_kmer_size
    String? smallest_kmer_size
    String? interval_consecutive_kmer
    String? kmer_sampling_value
    String? number_threads_default
    String? prefix_output_files
    Boolean? debug
    String read_file
  }
  command <<<
    kmergenie \
      ~{read_file} \
      ~{true="--diploid" false="" diploid} \
      ~{true="--one-pass" false="" one_pass} \
      ~{if defined(largest_kmer_size) then ("-k " +  '"' + largest_kmer_size + '"') else ""} \
      ~{if defined(smallest_kmer_size) then ("-l " +  '"' + smallest_kmer_size + '"') else ""} \
      ~{if defined(interval_consecutive_kmer) then ("-s " +  '"' + interval_consecutive_kmer + '"') else ""} \
      ~{if defined(kmer_sampling_value) then ("-e " +  '"' + kmer_sampling_value + '"') else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""} \
      ~{if defined(prefix_output_files) then ("-o " +  '"' + prefix_output_files + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    diploid: "use the diploid model (default: haploid model)"
    one_pass: "skip the second pass to estimate k at 2 bp resolution (default: two passes)"
    largest_kmer_size: "largest k-mer size to consider (default: 121)"
    smallest_kmer_size: "smallest k-mer size to consider (default: 15)"
    interval_consecutive_kmer: "interval between consecutive kmer sizes (default: 10)"
    kmer_sampling_value: "k-mer sampling value (default: auto-detected to use ~200 MB memory/thread)"
    number_threads_default: "number of threads (default: number of cores minus one)"
    prefix_output_files: "prefix of the output files (default: histograms)"
    debug: "developer output of R scripts"
    read_file: ""
  }
}
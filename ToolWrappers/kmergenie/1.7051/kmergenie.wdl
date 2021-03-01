version 1.0

task Kmergenie {
  input {
    Boolean? diploid
    Boolean? one_pass
    Int? largest_kmer_size
    Int? smallest_kmer_size
    Int? interval_consecutive_kmer
    Int? kmer_sampling_value
    Int? number_default_number
    String? prefix_default_histograms
    Boolean? debug
    Boolean? orig_hist
  }
  command <<<
    kmergenie \
      ~{if (diploid) then "--diploid" else ""} \
      ~{if (one_pass) then "--one-pass" else ""} \
      ~{if defined(largest_kmer_size) then ("-k " +  '"' + largest_kmer_size + '"') else ""} \
      ~{if defined(smallest_kmer_size) then ("-l " +  '"' + smallest_kmer_size + '"') else ""} \
      ~{if defined(interval_consecutive_kmer) then ("-s " +  '"' + interval_consecutive_kmer + '"') else ""} \
      ~{if defined(kmer_sampling_value) then ("-e " +  '"' + kmer_sampling_value + '"') else ""} \
      ~{if defined(number_default_number) then ("-t " +  '"' + number_default_number + '"') else ""} \
      ~{if defined(prefix_default_histograms) then ("-o " +  '"' + prefix_default_histograms + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (orig_hist) then "--orig-hist" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/kmergenie:1.7051--py38r40h197edbe_0"
  }
  parameter_meta {
    diploid: "use the diploid model (default: haploid model)"
    one_pass: "skip the second pass to estimate k at 2 bp resolution (default: two passes)"
    largest_kmer_size: "largest k-mer size to consider (default: 121)"
    smallest_kmer_size: "smallest k-mer size to consider (default: 15)"
    interval_consecutive_kmer: "interval between consecutive kmer sizes (default: 10)"
    kmer_sampling_value: "k-mer sampling value (default: auto-detected to use ~200 MB memory/thread)"
    number_default_number: "number of threads (default: number of cores minus one)"
    prefix_default_histograms: "prefix of the output files (default: histograms)"
    debug: "developer output of R scripts"
    orig_hist: "legacy histogram estimation method (slower, less accurate)"
  }
  output {
    File out_stdout = stdout()
  }
}
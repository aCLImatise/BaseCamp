version 1.0

task Smartdenovo.pl {
  input {
    String? output_prefix
    String? engine_overlaper_compressed
    Int? number_of_threads
    Int? kmer_length_use
    Int? min_read_length
    Int? generate_consensus
    Boolean? options
    Boolean? more_options
  }
  command <<<
    smartdenovo.pl \
      ~{if defined(output_prefix) then ("-p " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(engine_overlaper_compressed) then ("-e " +  '"' + engine_overlaper_compressed + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(kmer_length_use) then ("-k " +  '"' + kmer_length_use + '"') else ""} \
      ~{if defined(min_read_length) then ("-J " +  '"' + min_read_length + '"') else ""} \
      ~{if defined(generate_consensus) then ("-c " +  '"' + generate_consensus + '"') else ""} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    output_prefix: "output prefix [wtasm]"
    engine_overlaper_compressed: "engine of overlaper, compressed kmer overlapper(zmo), dot matrix overlapper(dmo), [dmo]"
    number_of_threads: "number of threads [8]"
    kmer_length_use: "k-mer length for overlapping [16] for large genome as human, please use 17"
    min_read_length: "min read length [5000]"
    generate_consensus: "generate consensus, [0]"
    options: ""
    more_options: ""
  }
}
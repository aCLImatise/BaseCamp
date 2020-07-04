version 1.0

task GimmeBackground {
  input {
    File? input_sequences_bed
    String? output_format_bed
    Int? size_random_sequences
    String? number_sequence_generate
    String? genome_version_type
    String? order_markov_model
    Boolean? h
    File file
    String type
  }
  command <<<
    gimme background \
      ~{file} \
      ~{type} \
      ~{if defined(input_sequences_bed) then ("-i " +  '"' + input_sequences_bed + '"') else ""} \
      ~{if defined(output_format_bed) then ("-f " +  '"' + output_format_bed + '"') else ""} \
      ~{if defined(size_random_sequences) then ("-s " +  '"' + size_random_sequences + '"') else ""} \
      ~{if defined(number_sequence_generate) then ("-n " +  '"' + number_sequence_generate + '"') else ""} \
      ~{if defined(genome_version_type) then ("-g " +  '"' + genome_version_type + '"') else ""} \
      ~{if defined(order_markov_model) then ("-m " +  '"' + order_markov_model + '"') else ""} \
      ~{true="-h" false="" h}
  >>>
  parameter_meta {
    input_sequences_bed: "input sequences (BED or FASTA)"
    output_format_bed: "output format (BED or FASTA"
    size_random_sequences: "size of random sequences"
    number_sequence_generate: "number of sequence to generate"
    genome_version_type: "genome version (not for type 'random')"
    order_markov_model: "order of the Markov model (only for type 'random', default 1)"
    h: ""
    file: "outputfile"
    type: "type of background sequences to generate (random,genomic,gc,promoter)"
  }
}
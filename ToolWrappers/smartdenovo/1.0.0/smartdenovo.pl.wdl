version 1.0

task Smartdenovopl {
  input {
    String? output_prefix
    String? engine_overlaper_overlapperdmo
    Int? number_of_threads
    Int? kmer_length_overlapping
    Int? min_read_length
    Int? generate_consensus
    Boolean? more_options
    Boolean? options
    String reads_dot_fa
  }
  command <<<
    smartdenovo_pl \
      ~{reads_dot_fa} \
      ~{if defined(output_prefix) then ("-p " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(engine_overlaper_overlapperdmo) then ("-e " +  '"' + engine_overlaper_overlapperdmo + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(kmer_length_overlapping) then ("-k " +  '"' + kmer_length_overlapping + '"') else ""} \
      ~{if defined(min_read_length) then ("-J " +  '"' + min_read_length + '"') else ""} \
      ~{if defined(generate_consensus) then ("-c " +  '"' + generate_consensus + '"') else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_prefix: "output prefix [wtasm]"
    engine_overlaper_overlapperdmo: "engine of overlaper, compressed kmer overlapper(zmo), dot matrix overlapper(dmo), [dmo]"
    number_of_threads: "number of threads [8]"
    kmer_length_overlapping: "k-mer length for overlapping [16]\\nfor large genome as human, please use 17"
    min_read_length: "min read length [5000]"
    generate_consensus: "generate consensus, [0]"
    more_options: ""
    options: ""
    reads_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}
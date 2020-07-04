version 1.0

task LoadIntoCounting.py {
  input {
    Boolean? info
    String? k
    String output_count_graph_filename
    String input_sequence_filename
  }
  command <<<
    load-into-counting.py \
      ~{output_count_graph_filename} \
      ~{input_sequence_filename} \
      ~{true="--info" false="" info} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  parameter_meta {
    info: ""
    k: ""
    output_count_graph_filename: "The name of the file to write the k-mer countgraph to."
    input_sequence_filename: "The names of one or more FAST[AQ] input sequence files."
  }
}
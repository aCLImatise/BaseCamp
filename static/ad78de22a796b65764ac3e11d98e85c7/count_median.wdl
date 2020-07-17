version 1.0

task CountMedian.py {
  input {
    Boolean? info
    Boolean? force
    String input_count_graph_filename
    String input_sequence_filename
    String output_summary_filename
  }
  command <<<
    count-median.py \
      ~{input_count_graph_filename} \
      ~{input_sequence_filename} \
      ~{output_summary_filename} \
      ~{true="--info" false="" info} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    info: "print citation information"
    force: "Overwrite output file if it exists (default: False)"
    input_count_graph_filename: "input k-mer countgraph filename"
    input_sequence_filename: "input FAST[AQ] sequence filename"
    output_summary_filename: "output summary filename"
  }
}
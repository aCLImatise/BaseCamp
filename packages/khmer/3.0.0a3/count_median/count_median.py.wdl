version 1.0

task Countmedianpy {
  input {
    Boolean? info
    File? force
    String count_kmers_summary
    String input_count_graph_filename
    String input_sequence_filename
    String output_summary_filename
  }
  command <<<
    count_median_py \
      ~{count_kmers_summary} \
      ~{input_count_graph_filename} \
      ~{input_sequence_filename} \
      ~{output_summary_filename} \
      ~{if (info) then "--info" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    info: "print citation information"
    force: "Overwrite output file if it exists (default: False)"
    count_kmers_summary: "Count k-mers summary stats for sequences"
    input_count_graph_filename: "input k-mer countgraph filename"
    input_sequence_filename: "input FAST[AQ] sequence filename"
    output_summary_filename: "output summary filename"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}
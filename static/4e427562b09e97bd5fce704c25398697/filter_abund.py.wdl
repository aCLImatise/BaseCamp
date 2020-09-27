version 1.0

task Filterabundpy {
  input {
    Boolean? v
    String? c
    String? t
    Boolean? info
    String input_count_graph_filename
    String input_sequence_filename
  }
  command <<<
    filter_abund_py \
      ~{input_count_graph_filename} \
      ~{input_sequence_filename} \
      ~{if (v) then "-V" else ""} \
      ~{if defined(c) then ("-C " +  '"' + c + '"') else ""} \
      ~{if defined(t) then ("-T " +  '"' + t + '"') else ""} \
      ~{if (info) then "--info" else ""}
  >>>
  parameter_meta {
    v: ""
    c: ""
    t: ""
    info: ""
    input_count_graph_filename: "The input k-mer countgraph filename"
    input_sequence_filename: "Input FAST[AQ] sequence filename"
  }
  output {
    File out_stdout = stdout()
  }
}
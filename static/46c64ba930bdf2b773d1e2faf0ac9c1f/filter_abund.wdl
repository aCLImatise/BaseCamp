version 1.0

task FilterAbund.py {
  input {
    Boolean? gzip
    Boolean? bzip
    Boolean? info
    String? t
    String? c
    Boolean? v
    String input_count_graph_filename
    String input_sequence_filename
  }
  command <<<
    filter-abund.py \
      ~{input_count_graph_filename} \
      ~{input_sequence_filename} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--bzip" false="" bzip} \
      ~{true="--info" false="" info} \
      ~{if defined(t) then ("-T " +  '"' + t + '"') else ""} \
      ~{if defined(c) then ("-C " +  '"' + c + '"') else ""} \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    info: ""
    t: ""
    c: ""
    v: ""
    input_count_graph_filename: "The input k-mer countgraph filename"
    input_sequence_filename: "Input FAST[AQ] sequence filename"
  }
}
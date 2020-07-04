version 1.0

task AbundanceDist.py {
  input {
    Boolean? info
    Boolean? z
    Boolean? s
    Boolean? b
    Boolean? f
    Boolean? q
    String input_count_graph_filename
    String input_sequence_filename
    String output_histogram_filename
  }
  command <<<
    abundance-dist.py \
      ~{input_count_graph_filename} \
      ~{input_sequence_filename} \
      ~{output_histogram_filename} \
      ~{true="--info" false="" info} \
      ~{true="-z" false="" z} \
      ~{true="-s" false="" s} \
      ~{true="-b" false="" b} \
      ~{true="-f" false="" f} \
      ~{true="-q" false="" q}
  >>>
  parameter_meta {
    info: ""
    z: ""
    s: ""
    b: ""
    f: ""
    q: ""
    input_count_graph_filename: "The name of the input k-mer countgraph file."
    input_sequence_filename: "The name of the input FAST[AQ] sequence file."
    output_histogram_filename: "The columns are: (1) k-mer abundance, (2) k-mer count, (3) cumulative count, (4) fraction of total distinct k-mers."
  }
}
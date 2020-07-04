version 1.0

task AnnotatePartitions.py {
  input {
    Boolean? info
    String? k_size
    Boolean? force
    String graph_base
    String input_sequence_filename
  }
  command <<<
    annotate-partitions.py \
      ~{graph_base} \
      ~{input_sequence_filename} \
      ~{true="--info" false="" info} \
      ~{if defined(k_size) then ("--ksize " +  '"' + k_size + '"') else ""} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    info: "print citation information"
    k_size: "k-mer size (default: 32) (default: 32)"
    force: "Overwrite output file if it exists (default: False)"
    graph_base: "basename for input and output files"
    input_sequence_filename: "input FAST[AQ] sequences to annotate."
  }
}
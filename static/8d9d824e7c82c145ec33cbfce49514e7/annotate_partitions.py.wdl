version 1.0

task Annotatepartitionspy {
  input {
    Boolean? info
    Int? k_size
    File? force
    String graph_base
    String input_sequence_filename
  }
  command <<<
    annotate_partitions_py \
      ~{graph_base} \
      ~{input_sequence_filename} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(k_size) then ("--ksize " +  '"' + k_size + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    info: "print citation information"
    k_size: "k-mer size (default: 32) (default: 32)"
    force: "Overwrite output file if it exists (default: False)"
    graph_base: "basename for input and output files"
    input_sequence_filename: "input FAST[AQ] sequences to annotate."
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}
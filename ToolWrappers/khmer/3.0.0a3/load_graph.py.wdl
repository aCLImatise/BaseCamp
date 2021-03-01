version 1.0

task Loadgraphpy {
  input {
    Boolean? info
    Int? k_size
    Int? unique_km_ers
    String? fp_rate
    Int? max_memory_usage
    Int? threads
    Boolean? no_build_tagset
    File? force
    String output_node_graph_filename
    String input_sequence_filename
  }
  command <<<
    load_graph_py \
      ~{output_node_graph_filename} \
      ~{input_sequence_filename} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(k_size) then ("--ksize " +  '"' + k_size + '"') else ""} \
      ~{if defined(unique_km_ers) then ("--unique-kmers " +  '"' + unique_km_ers + '"') else ""} \
      ~{if defined(fp_rate) then ("--fp-rate " +  '"' + fp_rate + '"') else ""} \
      ~{if defined(max_memory_usage) then ("--max-memory-usage " +  '"' + max_memory_usage + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (no_build_tagset) then "--no-build-tagset" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    info: "print citation information"
    k_size: "k-mer size to use (default: 32)"
    unique_km_ers: "approximate number of unique kmers in the input set\\n(default: 0)"
    fp_rate: "Override the automatic FP rate setting for the current\\nscript (default: None)"
    max_memory_usage: "maximum amount of memory to use for data structure\\n(default: None)"
    threads: "Number of simultaneous threads to execute (default: 1)"
    no_build_tagset: "Do NOT construct tagset while loading sequences\\n(default: False)"
    force: "Overwrite output file if it exists (default: False)"
    output_node_graph_filename: "output k-mer nodegraph filename."
    input_sequence_filename: "input FAST[AQ] sequence filename"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}
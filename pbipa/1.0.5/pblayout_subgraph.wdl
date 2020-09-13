version 1.0

task PblayoutSubgraph {
  input {
    Boolean? directed
    Boolean? radius
    Boolean? tp
    Boolean? seq_db
    Boolean? use_seq_ids
    Boolean? write_seqs
    File? csv_nodes
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String in_sg
    String format_dot
  }
  command <<<
    pblayout subgraph \
      ~{in_sg} \
      ~{format_dot} \
      ~{if (directed) then "--directed" else ""} \
      ~{if (radius) then "--radius" else ""} \
      ~{if (tp) then "--tp" else ""} \
      ~{if (seq_db) then "--seqdb" else ""} \
      ~{if (use_seq_ids) then "--use-seq-ids" else ""} \
      ~{if (write_seqs) then "--write-seqs" else ""} \
      ~{if (csv_nodes) then "--csv-nodes" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  parameter_meta {
    directed: "Apply the directed ego-graph algorithm to\\nextract the subgraph."
    radius: "INT   Radius (in the number of nodes) to extract in\\neach direction. [100]"
    tp: "STR   Path to a tiling path file. If specified, it\\nwill be used to create the Bandage CSV."
    seq_db: "STR   Path to a SeqDB file. If specified, it will be\\nused to retrieve lengths of sequences."
    use_seq_ids: "Indicates that the sequences in the input\\ngraph are actually IDs instead of headers."
    write_seqs: "Write the sequences to the generated GFA file.\\nThis requires the '--seqdb' to be provided."
    csv_nodes: "STR   CSV file with a list of nodes to extract. Each\\nline contains 2 columns: <node_name> <label>.\\nThe label will be used to name the output\\nfiles."
    num_threads: "INT   Number of threads to use, 0 means\\nautodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG,\\nINFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    in_sg: "STR   Input string graph in the sg_edges_list"
    format_dot: "out_prefix               STR   Output prefix."
  }
  output {
    File out_stdout = stdout()
    File out_csv_nodes = "${in_csv_nodes}"
  }
}
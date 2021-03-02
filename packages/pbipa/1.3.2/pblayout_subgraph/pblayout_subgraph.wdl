version 1.0

task PblayoutSubgraph {
  input {
    Boolean? directed
    Boolean? radius
    Boolean? tp
    Boolean? seq_db
    Boolean? use_seq_ids
    Boolean? write_seqs
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String in_sg
    String out_prefix
    String provided_dot
  }
  command <<<
    pblayout subgraph \
      ~{in_sg} \
      ~{out_prefix} \
      ~{provided_dot} \
      ~{if (directed) then "--directed" else ""} \
      ~{if (radius) then "--radius" else ""} \
      ~{if (tp) then "--tp" else ""} \
      ~{if (seq_db) then "--seqdb" else ""} \
      ~{if (use_seq_ids) then "--use-seq-ids" else ""} \
      ~{if (write_seqs) then "--write-seqs" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbipa:1.3.2--hee625c5_0"
  }
  parameter_meta {
    directed: "Apply the directed ego-graph algorithm to extract the subgraph."
    radius: "INT   Radius (in the number of nodes) to extract in each direction. [100]"
    tp: "STR   Path to a tiling path file. If specified, it will be used to create the Bandage CSV."
    seq_db: "STR   Path to a SeqDB file. If specified, it will be used to retrieve lengths of sequences."
    use_seq_ids: "Indicates that the sequences in the input graph are actually IDs instead of headers."
    write_seqs: "Write the sequences to the generated GFA file. This requires the '--seqdb' to be"
    num_threads: "INT   Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    in_sg: "STR   Input string graph in the sg_edges_list format."
    out_prefix: "STR   Output prefix."
    provided_dot: "--csv-nodes              STR   CSV file with a list of nodes to extract. Each line contains 2 columns: <node_name>"
  }
  output {
    File out_stdout = stdout()
  }
}
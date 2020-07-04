version 1.0

task PblayoutSubgraph {
  input {
    Boolean? directed
    Boolean? radius
    Boolean? tp
    Boolean? seq_db
    Boolean? use_seq_ids
    Boolean? write_seqs
    Boolean? csv_nodes
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String subgraph
    String in_sg
    String out_prefix
  }
  command <<<
    pblayout subgraph \
      ~{subgraph} \
      ~{in_sg} \
      ~{out_prefix} \
      ~{true="--directed" false="" directed} \
      ~{true="--radius" false="" radius} \
      ~{true="--tp" false="" tp} \
      ~{true="--seqdb" false="" seq_db} \
      ~{true="--use-seq-ids" false="" use_seq_ids} \
      ~{true="--write-seqs" false="" write_seqs} \
      ~{true="--csv-nodes" false="" csv_nodes} \
      ~{true="--num-threads" false="" num_threads} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-file" false="" log_file}
  >>>
  parameter_meta {
    directed: "Apply the directed ego-graph algorithm to extract the subgraph."
    radius: "INT   Radius (in the number of nodes) to extract in each direction. [100]"
    tp: "STR   Path to a tiling path file. If specified, it will be used to create the Bandage CSV."
    seq_db: "STR   Path to a SeqDB file. If specified, it will be used to retrieve lengths of sequences."
    use_seq_ids: "Indicates that the sequences in the input graph are actually IDs instead of headers."
    write_seqs: "Write the sequences to the generated GFA file. This requires the '--seqdb' to be provided."
    csv_nodes: "STR   CSV file with a list of nodes to extract. Each line contains 2 columns: <node_name> <label>. The label will be used to name the output files."
    num_threads: "INT   Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    subgraph: ""
    in_sg: ""
    out_prefix: ""
  }
}
version 1.0

task MakeNodeGraphpy {
  input {
    Float? fp_rate
    String? intersect_node_graph
    Int? k_size
    Int? threads
    String in_file
    String out_dir
  }
  command <<<
    MakeNodeGraph_py \
      ~{in_file} \
      ~{out_dir} \
      ~{if defined(fp_rate) then ("--fp_rate " +  '"' + fp_rate + '"') else ""} \
      ~{if defined(intersect_node_graph) then ("--intersect_nodegraph " +  '"' + intersect_node_graph + '"') else ""} \
      ~{if defined(k_size) then ("--k_size " +  '"' + k_size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    fp_rate: "False positive rate. (default: 0.0001)"
    intersect_node_graph: "Location of Node Graph. Will only insert query k-mers\\nin bloom filter if they appear anywhere in the\\ntraining database. Note that the Jaccard estimates\\nwill now be J(query intersect union_i training_i,\\ntraining_i) instead of J(query, training_i), but will\\nuse significantly less space (unfortunately will also\\ndisable threading). (default: None)"
    k_size: "K-mer size (default: 21)"
    threads: "Number of threads to use (default: 8)\\n"
    in_file: "Input file: FASTQ/A file (can be gzipped)."
    out_dir: "Output directory"
  }
  output {
    File out_stdout = stdout()
  }
}
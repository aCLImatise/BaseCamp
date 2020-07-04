version 1.0

task QueryDNADatabase.py {
  input {
    String? threads
    Boolean? force
    String? fp_rate
    String? containment_threshold
    String? confidence
    String? node_graph
    Boolean? base_name
    Boolean? intersect_node_graph
    String in_file
    String training_data
    String out_csv
  }
  command <<<
    QueryDNADatabase.py \
      ~{in_file} \
      ~{training_data} \
      ~{out_csv} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(fp_rate) then ("--fp_rate " +  '"' + fp_rate + '"') else ""} \
      ~{if defined(containment_threshold) then ("--containment_threshold " +  '"' + containment_threshold + '"') else ""} \
      ~{if defined(confidence) then ("--confidence " +  '"' + confidence + '"') else ""} \
      ~{if defined(node_graph) then ("--node_graph " +  '"' + node_graph + '"') else ""} \
      ~{true="--base_name" false="" base_name} \
      ~{true="--intersect_nodegraph" false="" intersect_node_graph}
  >>>
  parameter_meta {
    threads: "Number of threads to use (default: 8)"
    force: "Force creation of new NodeGraph. (default: False)"
    fp_rate: "False positive rate. (default: 0.0001)"
    containment_threshold: "Only return results with containment index above this value (default: 0.02)"
    confidence: "Desired probability that all results were returned with containment index above threshold [-ct] (default: 0.95)"
    node_graph: "NodeGraph/bloom filter location. Used if it exists; if not, one will be created and put in the same directory as the specified output CSV file. (default: None)"
    base_name: "Flag to indicate that only the base names (not the full path) should be saved in the output CSV file (default: False)"
    intersect_node_graph: "Option to only insert query k-mers in bloom filter if they appear anywhere in the training database. Note that the Jaccard estimates will now be J(query intersect union_i training_i, training_i) instead of J(query, training_i), but will use significantly less space. (default: False)"
    in_file: "Input file: FASTQ/A file (can be gzipped)."
    training_data: "Training/reference data (HDF5 file created by MakeTrainingDatabase.py)"
    out_csv: "Output CSV file"
  }
}
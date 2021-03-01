version 1.0

task QueryDNADatabasepy {
  input {
    Int? threads
    Boolean? force
    Float? fp_rate
    Float? containment_threshold
    Float? confidence
    File? node_graph
    File? base_name
    Boolean? intersect_node_graph
    String in_file
    String training_data
    String out_csv
  }
  command <<<
    QueryDNADatabase_py \
      ~{in_file} \
      ~{training_data} \
      ~{out_csv} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(fp_rate) then ("--fp_rate " +  '"' + fp_rate + '"') else ""} \
      ~{if defined(containment_threshold) then ("--containment_threshold " +  '"' + containment_threshold + '"') else ""} \
      ~{if defined(confidence) then ("--confidence " +  '"' + confidence + '"') else ""} \
      ~{if defined(node_graph) then ("--node_graph " +  '"' + node_graph + '"') else ""} \
      ~{if (base_name) then "--base_name" else ""} \
      ~{if (intersect_node_graph) then "--intersect_nodegraph" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: "Number of threads to use (default: 8)"
    force: "Force creation of new NodeGraph. (default: False)"
    fp_rate: "False positive rate. (default: 0.0001)"
    containment_threshold: "Only return results with containment index above this\\nvalue (default: 0.02)"
    confidence: "Desired probability that all results were returned\\nwith containment index above threshold [-ct] (default:\\n0.95)"
    node_graph: "NodeGraph/bloom filter location. Used if it exists; if\\nnot, one will be created and put in the same directory\\nas the specified output CSV file. (default: None)"
    base_name: "Flag to indicate that only the base names (not the\\nfull path) should be saved in the output CSV file\\n(default: False)"
    intersect_node_graph: "Option to only insert query k-mers in bloom filter if\\nthey appear anywhere in the training database. Note\\nthat the Jaccard estimates will now be J(query\\nintersect union_i training_i, training_i) instead of\\nJ(query, training_i), but will use significantly less\\nspace. (default: False)\\n"
    in_file: "Input file: FASTQ/A file (can be gzipped)."
    training_data: "Training/reference data (HDF5 file created by\\nMakeTrainingDatabase.py)"
    out_csv: "Output CSV file"
  }
  output {
    File out_stdout = stdout()
    File out_node_graph = "${in_node_graph}"
    File out_base_name = "${in_base_name}"
  }
}
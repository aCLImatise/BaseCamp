version 1.0

task MakeDNADatabase.py {
  input {
    String? prime
    String? threads
    String? num_hashes
    String? k_size
    Boolean? intersect_node_graph
    String in_file
    String out_file
  }
  command <<<
    MakeDNADatabase.py \
      ~{in_file} \
      ~{out_file} \
      ~{if defined(prime) then ("--prime " +  '"' + prime + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(num_hashes) then ("--num_hashes " +  '"' + num_hashes + '"') else ""} \
      ~{if defined(k_size) then ("--k_size " +  '"' + k_size + '"') else ""} \
      ~{true="--intersect_nodegraph" false="" intersect_node_graph}
  >>>
  parameter_meta {
    prime: "Prime (for modding hashes) (default: 9999999999971)"
    threads: "Number of threads to use (default: 8)"
    num_hashes: "Number of hashes to use. (default: 500)"
    k_size: "K-mer size (default: 21)"
    intersect_node_graph: "Optional flag to export Nodegraph file (bloom filter) containing all k-mers in the training database. Saved in same location as out_file. This is to be used with QueryDNADatabase.py (default: False)"
    in_file: "Input file: file containing (absolute) file names of training genomes."
    out_file: "Output training database/reference file (in HDF5 format)"
  }
}
version 1.0

task Heinz {
  input {
    String? fdr
    String? specifies_a
    String? edge_list_file
    Int? enum
    Int? formulation_commodity_flow
    String? lambda
    Int? specifies_number_threads
    Int? max_cuts
    String? node_file
    String? output_file
    Boolean? enable_preprocessing
    String? specifies_root_node
    String? stp_node_file
    Int? time_limit_seconds
    Int? verbosity
    Boolean? version
  }
  command <<<
    heinz \
      ~{if defined(fdr) then ("-FDR " +  '"' + fdr + '"') else ""} \
      ~{if defined(specifies_a) then ("-a " +  '"' + specifies_a + '"') else ""} \
      ~{if defined(edge_list_file) then ("-e " +  '"' + edge_list_file + '"') else ""} \
      ~{if defined(enum) then ("-enum " +  '"' + enum + '"') else ""} \
      ~{if defined(formulation_commodity_flow) then ("-f " +  '"' + formulation_commodity_flow + '"') else ""} \
      ~{if defined(lambda) then ("-lambda " +  '"' + lambda + '"') else ""} \
      ~{if defined(specifies_number_threads) then ("-m " +  '"' + specifies_number_threads + '"') else ""} \
      ~{if defined(max_cuts) then ("-maxCuts " +  '"' + max_cuts + '"') else ""} \
      ~{if defined(node_file) then ("-n " +  '"' + node_file + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{true="-p" false="" enable_preprocessing} \
      ~{if defined(specifies_root_node) then ("-r " +  '"' + specifies_root_node + '"') else ""} \
      ~{if defined(stp_node_file) then ("-s " +  '"' + stp_node_file + '"') else ""} \
      ~{if defined(time_limit_seconds) then ("-t " +  '"' + time_limit_seconds + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    fdr: "Specifies fdr"
    specifies_a: "Specifies a"
    edge_list_file: "Edge list file"
    enum: "Enumeration mode: 0 - No enumeration 1 - No root 2 - Fix root 3 - No root per component (default)"
    formulation_commodity_flow: "Formulation of the problem: 0 - Single Commodity Flow 1 - Multi Commodity Flow 2 - Cut formulation (Flow)  3 - Cut formulation (Flow-min) 4 - Cut formulation (Node-separator) 5 - Cut formulation (Node-separator, BK, default) 6 - Tree DP 7 - Tree DP heuristic (fixed_edge) 8 - Tree DP heuristic (random_edge) 9 - Tree DP heuristic (uniform_edge)"
    lambda: "Specifies lambda"
    specifies_number_threads: "Specifies number of threads (default: 1)"
    max_cuts: "Specifies the maximum number of cuts per step (only in conjuction with -f 2, optional, default: -1)"
    node_file: "Node file"
    output_file: "Output file"
    enable_preprocessing: "Enable preprocessing"
    specifies_root_node: "Specifies the root node (optional)"
    stp_node_file: "STP node file"
    time_limit_seconds: "Time limit (in seconds, default: -1)"
    verbosity: "Specifies the verbosity level: 0 - No output 1 - Only necessary output 2 - More verbose output (default) 3 - Debug output"
    version: "Show version number"
  }
}
version 1.0

task Heinz {
  input {
    Int? fdr
    Int? specifies_a
    File? edge_list_file
    Int? enum
    Int? formulation_problem_single
    Int? lambda
    Int? specifies_number_threads
    Int? max_cuts
    File? node_file
    File? output_file
    Boolean? enable_preprocessing
    String? specifies_root_node
    File? stp_node_file
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
      ~{if defined(formulation_problem_single) then ("-f " +  '"' + formulation_problem_single + '"') else ""} \
      ~{if defined(lambda) then ("-lambda " +  '"' + lambda + '"') else ""} \
      ~{if defined(specifies_number_threads) then ("-m " +  '"' + specifies_number_threads + '"') else ""} \
      ~{if defined(max_cuts) then ("-maxCuts " +  '"' + max_cuts + '"') else ""} \
      ~{if defined(node_file) then ("-n " +  '"' + node_file + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if (enable_preprocessing) then "-p" else ""} \
      ~{if defined(specifies_root_node) then ("-r " +  '"' + specifies_root_node + '"') else ""} \
      ~{if defined(stp_node_file) then ("-s " +  '"' + stp_node_file + '"') else ""} \
      ~{if defined(time_limit_seconds) then ("-t " +  '"' + time_limit_seconds + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/heinz:2.0.1--he1b5a44_0"
  }
  parameter_meta {
    fdr: "Specifies fdr"
    specifies_a: "Specifies a"
    edge_list_file: "Edge list file"
    enum: "Enumeration mode:\\n0 - No enumeration\\n1 - No root\\n2 - Fix root\\n3 - No root per component (default)"
    formulation_problem_single: "Formulation of the problem:\\n0 - Single Commodity Flow\\n1 - Multi Commodity Flow\\n2 - Cut formulation (Flow)\\n3 - Cut formulation (Flow-min)\\n4 - Cut formulation (Node-separator)\\n5 - Cut formulation (Node-separator, BK, default)\\n6 - Tree DP\\n7 - Tree DP heuristic (fixed_edge)\\n8 - Tree DP heuristic (random_edge)\\n9 - Tree DP heuristic (uniform_edge)"
    lambda: "Specifies lambda"
    specifies_number_threads: "Specifies number of threads (default: 1)"
    max_cuts: "Specifies the maximum number of cuts per step\\n(only in conjuction with -f 2, optional, default: -1)"
    node_file: "Node file"
    output_file: "Output file"
    enable_preprocessing: "Enable preprocessing"
    specifies_root_node: "Specifies the root node (optional)"
    stp_node_file: "STP node file"
    time_limit_seconds: "Time limit (in seconds, default: -1)"
    verbosity: "Specifies the verbosity level:\\n0 - No output\\n1 - Only necessary output\\n2 - More verbose output (default)\\n3 - Debug output"
    version: "Show version number\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}
version 1.0

task SCNICAnalysispyModules {
  input {
    String? input_loc
    Directory? output_loc
    Int? min_p
    Int? min_r
    String? method
    Int? k_size
    Float? gamma
    String? table_loc
    File? prefix
    Boolean? verbose
  }
  command <<<
    SCNIC_analysis_py modules \
      ~{if defined(input_loc) then ("--input_loc " +  '"' + input_loc + '"') else ""} \
      ~{if defined(output_loc) then ("--output_loc " +  '"' + output_loc + '"') else ""} \
      ~{if defined(min_p) then ("--min_p " +  '"' + min_p + '"') else ""} \
      ~{if defined(min_r) then ("--min_r " +  '"' + min_r + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(k_size) then ("--k_size " +  '"' + k_size + '"') else ""} \
      ~{if defined(gamma) then ("--gamma " +  '"' + gamma + '"') else ""} \
      ~{if defined(table_loc) then ("--table_loc " +  '"' + table_loc + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/scnic:0.6.2--py_0"
  }
  parameter_meta {
    input_loc: "location of output from SCNIC_analysis.py within\\n(default: None)"
    output_loc: "output directory (default: None)"
    min_p: "minimum p-value to determine edges, p must have been\\ncalculated (default: None)"
    min_r: "minimum correlation value to determine edges (default:\\nNone)"
    method: "method to be used for determining modules, pick from:\\nnaive, k_cliques or louvain (default: naive)"
    k_size: "k value for use with the k-clique communities\\nalgorithm (default: 3)"
    gamma: "gamma value for use with louvain modularity\\nmaximization, between 0 and 1 where 0 makes small\\nmodules and 1 large modules (default: 0.1)"
    table_loc: "biom table used to make network to be collapsed\\n(default: None)"
    prefix: "prefix for module names in collapsed file (default:\\nmodule)"
    verbose: "give verbose messages to STDOUT (default: False)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_loc = "${in_output_loc}"
  }
}
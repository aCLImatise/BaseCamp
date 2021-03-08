version 1.0

task PmhTr {
  input {
    Int? _t_leaflabeling
    File? optional_file_migration
    Boolean? old
    Int? ub_gamma
    Int? ub_mu
    Int? ub_sigma
    File? color_map_file
    Boolean? export_ilp
    Boolean? output_search_graph
    Int? time_limit_seconds
    Boolean? log
    Int? allowed_migration_patterns
    String? output_prefix
    Int? number_threads_default
    String leaf_labeling
  }
  command <<<
    pmh_tr \
      ~{leaf_labeling} \
      ~{if defined(_t_leaflabeling) then ("-p " +  '"' + _t_leaflabeling + '"') else ""} \
      ~{if defined(optional_file_migration) then ("-G " +  '"' + optional_file_migration + '"') else ""} \
      ~{if (old) then "-OLD" else ""} \
      ~{if defined(ub_gamma) then ("-UB_gamma " +  '"' + ub_gamma + '"') else ""} \
      ~{if defined(ub_mu) then ("-UB_mu " +  '"' + ub_mu + '"') else ""} \
      ~{if defined(ub_sigma) then ("-UB_sigma " +  '"' + ub_sigma + '"') else ""} \
      ~{if defined(color_map_file) then ("-c " +  '"' + color_map_file + '"') else ""} \
      ~{if (export_ilp) then "-e" else ""} \
      ~{if (output_search_graph) then "-g" else ""} \
      ~{if defined(time_limit_seconds) then ("-l " +  '"' + time_limit_seconds + '"') else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if defined(allowed_migration_patterns) then ("-m " +  '"' + allowed_migration_patterns + '"') else ""} \
      ~{if defined(output_prefix) then ("-o " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/machina:1.2--h176a8bc_1"
  }
  parameter_meta {
    _t_leaflabeling: "[-t int] T leaf_labeling"
    optional_file_migration: "Optional file with migration graphs"
    old: "Use old ILP (typically much slower)"
    ub_gamma: "Upper bound on the comigration number (default: -1, disabled)"
    ub_mu: "Upper bound on the migration number (default: -1, disabled)"
    ub_sigma: "Upper bound on the seeding site number (default: -1, disabled)"
    color_map_file: "Color map file"
    export_ilp: "Export ILP"
    output_search_graph: "Output search graph"
    time_limit_seconds: "Time limit in seconds (default: -1, no time limit)"
    log: "Gurobi logging"
    allowed_migration_patterns: "Allowed migration patterns:\\n0 : PS\\n1 : PS, S\\n2 : PS, S, M\\n3 : PS, S, M, R\\nIf no pattern is specified, all allowed patterns will be\\nenumerated (default: '0,1,2,3')"
    output_prefix: "Output prefix"
    number_threads_default: "Number of threads (default: -1, #cores)\\n"
    leaf_labeling: "Leaf labeling"
  }
  output {
    File out_stdout = stdout()
  }
}
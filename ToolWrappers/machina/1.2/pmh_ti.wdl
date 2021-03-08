version 1.0

task PmhTi {
  input {
    File? frequencies_file
    File? optional_file_migration
    Int? number_mutation_trees
    Boolean? old
    Int? ub_gamma
    Int? ub_mu
    Int? ub_sigma
    String? bart
    File? color_map_file
    Boolean? export_ilp
    Boolean? output_search_graph
    Int? time_limit_default
    Boolean? log
    Int? allowed_migration_patterns
    Int? mut_tree_idx
    Boolean? nopr
    String? output_prefix
    String? primary_anatomical_site
    Int? random_number_generator
    Int? number_threads_default
    Boolean? use_bounds
  }
  command <<<
    pmh_ti \
      ~{if defined(frequencies_file) then ("-F " +  '"' + frequencies_file + '"') else ""} \
      ~{if defined(optional_file_migration) then ("-G " +  '"' + optional_file_migration + '"') else ""} \
      ~{if defined(number_mutation_trees) then ("-N " +  '"' + number_mutation_trees + '"') else ""} \
      ~{if (old) then "-OLD" else ""} \
      ~{if defined(ub_gamma) then ("-UB_gamma " +  '"' + ub_gamma + '"') else ""} \
      ~{if defined(ub_mu) then ("-UB_mu " +  '"' + ub_mu + '"') else ""} \
      ~{if defined(ub_sigma) then ("-UB_sigma " +  '"' + ub_sigma + '"') else ""} \
      ~{if defined(bart) then ("-barT " +  '"' + bart + '"') else ""} \
      ~{if defined(color_map_file) then ("-c " +  '"' + color_map_file + '"') else ""} \
      ~{if (export_ilp) then "-e" else ""} \
      ~{if (output_search_graph) then "-g" else ""} \
      ~{if defined(time_limit_default) then ("-l " +  '"' + time_limit_default + '"') else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if defined(allowed_migration_patterns) then ("-m " +  '"' + allowed_migration_patterns + '"') else ""} \
      ~{if defined(mut_tree_idx) then ("-mutTreeIdx " +  '"' + mut_tree_idx + '"') else ""} \
      ~{if (nopr) then "-noPR" else ""} \
      ~{if defined(output_prefix) then ("-o " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(primary_anatomical_site) then ("-p " +  '"' + primary_anatomical_site + '"') else ""} \
      ~{if defined(random_number_generator) then ("-s " +  '"' + random_number_generator + '"') else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""} \
      ~{if (use_bounds) then "-useBounds" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/machina:1.2--h176a8bc_1"
  }
  parameter_meta {
    frequencies_file: "Frequencies file"
    optional_file_migration: "Optional file with migration graphs"
    number_mutation_trees: "Number of mutation trees to consider (default: -1, all)"
    old: "Use old ILP (typically much slower)"
    ub_gamma: "Upper bound on the comigration number (default: -1, disabled)"
    ub_mu: "Upper bound on the migration number (default: -1, disabled)"
    ub_sigma: "Upper bound on the seeding site number (default: -1, disabled)"
    bart: "Mutation trees"
    color_map_file: "Color map file"
    export_ilp: "Export ILP"
    output_search_graph: "Output search graph"
    time_limit_default: "Time limit in seconds for the ILP (default: -1, unlimited)"
    log: "Gurobi logging"
    allowed_migration_patterns: "Allowed migration patterns:\\n0 : PS\\n1 : PS, S\\n2 : PS, S, M\\n3 : PS, S, M, R\\nIf no pattern is specified, all allowed patterns will be\\nenumerated (default: '0,1,2,3')"
    mut_tree_idx: "Mutation tree index (default: -1)"
    nopr: "Disable polytomy resolution"
    output_prefix: "Output prefix"
    primary_anatomical_site: "Primary anatomical site"
    random_number_generator: "Random number generator seed (default: 0)"
    number_threads_default: "Number of threads (default: -1, #cores)"
    use_bounds: "Only retain optimal solution\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
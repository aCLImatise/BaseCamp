version 1.0

task Runbenders {
  input {
    String? model_directory
    String? instance_directory
    String? objective_sense_stage_based
    String? scenario_tree_seed
    String? scenario_tree_down_sample_fraction
    String? scenario_bundle_specification
    String? create_random_bundles
    Int? max_iterations
    String? percent_gap
    String? multi_cut_level
    String? user_bound
    Boolean? master_disable_warm_starts
    String? master_solver
    String? master_solver_io
    String? master_mip_gap
    String? master_solver_options
    Boolean? master_output_solver_log
    Boolean? master_keep_solver_files
    Boolean? master_symbolic_solver_labels
    Boolean? output_solver_logs
    Boolean? symbolic_solver_labels
    String? scenario_mip_gap
    String? scenario_solver_options
    String? solver
    String? solver_io
    String? solver_manager
    String? ph_pyro_required_workers
    String? ph_pyro_workers_timeout
    String? pyro_hostname
    Boolean? disable_warm_starts
    Boolean? shutdown_pyro
    Boolean? output_scenario_tree_solution
    Boolean? output_solver_results
    Boolean? output_times
    Boolean? output_instance_construction_times
    Boolean? verbose
    Boolean? disable_gc
    Boolean? keep_solver_files
    String? profile
    Boolean? traceback
  }
  command <<<
    runbenders \
      ~{if defined(model_directory) then ("--model-directory " +  '"' + model_directory + '"') else ""} \
      ~{if defined(instance_directory) then ("--instance-directory " +  '"' + instance_directory + '"') else ""} \
      ~{if defined(objective_sense_stage_based) then ("--objective-sense-stage-based " +  '"' + objective_sense_stage_based + '"') else ""} \
      ~{if defined(scenario_tree_seed) then ("--scenario-tree-seed " +  '"' + scenario_tree_seed + '"') else ""} \
      ~{if defined(scenario_tree_down_sample_fraction) then ("--scenario-tree-downsample-fraction " +  '"' + scenario_tree_down_sample_fraction + '"') else ""} \
      ~{if defined(scenario_bundle_specification) then ("--scenario-bundle-specification " +  '"' + scenario_bundle_specification + '"') else ""} \
      ~{if defined(create_random_bundles) then ("--create-random-bundles " +  '"' + create_random_bundles + '"') else ""} \
      ~{if defined(max_iterations) then ("--max-iterations " +  '"' + max_iterations + '"') else ""} \
      ~{if defined(percent_gap) then ("--percent-gap " +  '"' + percent_gap + '"') else ""} \
      ~{if defined(multi_cut_level) then ("--multicut-level " +  '"' + multi_cut_level + '"') else ""} \
      ~{if defined(user_bound) then ("--user-bound " +  '"' + user_bound + '"') else ""} \
      ~{true="--master-disable-warmstarts" false="" master_disable_warm_starts} \
      ~{if defined(master_solver) then ("--master-solver " +  '"' + master_solver + '"') else ""} \
      ~{if defined(master_solver_io) then ("--master-solver-io " +  '"' + master_solver_io + '"') else ""} \
      ~{if defined(master_mip_gap) then ("--master-mipgap " +  '"' + master_mip_gap + '"') else ""} \
      ~{if defined(master_solver_options) then ("--master-solver-options " +  '"' + master_solver_options + '"') else ""} \
      ~{true="--master-output-solver-log" false="" master_output_solver_log} \
      ~{true="--master-keep-solver-files" false="" master_keep_solver_files} \
      ~{true="--master-symbolic-solver-labels" false="" master_symbolic_solver_labels} \
      ~{true="--output-solver-logs" false="" output_solver_logs} \
      ~{true="--symbolic-solver-labels" false="" symbolic_solver_labels} \
      ~{if defined(scenario_mip_gap) then ("--scenario-mipgap " +  '"' + scenario_mip_gap + '"') else ""} \
      ~{if defined(scenario_solver_options) then ("--scenario-solver-options " +  '"' + scenario_solver_options + '"') else ""} \
      ~{if defined(solver) then ("--solver " +  '"' + solver + '"') else ""} \
      ~{if defined(solver_io) then ("--solver-io " +  '"' + solver_io + '"') else ""} \
      ~{if defined(solver_manager) then ("--solver-manager " +  '"' + solver_manager + '"') else ""} \
      ~{if defined(ph_pyro_required_workers) then ("--phpyro-required-workers " +  '"' + ph_pyro_required_workers + '"') else ""} \
      ~{if defined(ph_pyro_workers_timeout) then ("--phpyro-workers-timeout " +  '"' + ph_pyro_workers_timeout + '"') else ""} \
      ~{if defined(pyro_hostname) then ("--pyro-hostname " +  '"' + pyro_hostname + '"') else ""} \
      ~{true="--disable-warmstarts" false="" disable_warm_starts} \
      ~{true="--shutdown-pyro" false="" shutdown_pyro} \
      ~{true="--output-scenario-tree-solution" false="" output_scenario_tree_solution} \
      ~{true="--output-solver-results" false="" output_solver_results} \
      ~{true="--output-times" false="" output_times} \
      ~{true="--output-instance-construction-times" false="" output_instance_construction_times} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--disable-gc" false="" disable_gc} \
      ~{true="--keep-solver-files" false="" keep_solver_files} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{true="--traceback" false="" traceback}
  >>>
  parameter_meta {
    model_directory: "The directory in which all model (reference and scenario) definitions are stored. Default is \".\"."
    instance_directory: "The directory in which all instance (reference and scenario) definitions are stored. This option is required if no callback is found in the model file."
    objective_sense_stage_based: "The objective sense to use for the auto-generated scenario instance objective, which is equal to the sum of the scenario-tree stage costs. Default is None, indicating an Objective has been declared on the reference model."
    scenario_tree_seed: "The random seed associated with manipulation operations on the scenario tree (e.g., down-sampling or bundle creation). Default is 0, indicating unassigned."
    scenario_tree_down_sample_fraction: "The proportion of the scenarios in the scenario tree that are actually used. Specific scenarios are selected at random. Default is 1.0, indicating no down-sampling."
    scenario_bundle_specification: "The name of the scenario bundling specification to be used when executing Progressive Hedging. Default is None, indicating no bundling is employed. If the specified name ends with a .dat suffix, the argument is interpreted as a filename. Otherwise, the name is interpreted as a file in the instance directory, constructed by adding the .dat suffix automatically"
    create_random_bundles: "Specification to create the indicated number of random, equally-sized (to the degree possible) scenario bundles. Default is 0, indicating disabled."
    max_iterations: "The maximal number of benders iterations. Default is 100."
    percent_gap: "Percent optimality gap required for convergence. Default is 0.0001%."
    multi_cut_level: "The number of cut groups added to the master benders problem each iteration. Default is 1."
    user_bound: "A user provided best bound for the relaxed (master) problem. When provided, will be used in the optimality gap calculation if appropriate."
    master_disable_warm_starts: "Disable warm-start of the benders master problem solves. Default is False."
    master_solver: "Specify the solver with which to solve the master benders problem. The following solver types are currently supported: asl, baron, bilevel_blp_global, bilevel_blp_local, bilevel_ld, cbc, cplex, glpk, gurobi, mpec_minlp, mpec_nlp, openopt, os, path, pico, ps, py, scip, xpress; Default: cplex"
    master_solver_io: "The type of IO used to execute the master solver. Different solvers support different types of IO, but the following are common options: lp - generate LP files, nl - generate NL files, python - direct Python interface, os - generate OSiL XML files."
    master_mip_gap: "Specifies the mipgap for the master benders solves."
    master_solver_options: "Solver options for the master benders problem."
    master_output_solver_log: "Output solver logs during master benders solves solves"
    master_keep_solver_files: "Retain temporary input and output files for master benders solves"
    master_symbolic_solver_labels: "When interfacing with the solver, use symbol names derived from the model. For example, \"my_special_variable[1_2_3]\" instead of \"v1\". Useful for debugging. When using the ASL interface (--solver- io=nl), generates corresponding .row (constraints) and .col (variables) files. The ordering in these files provides a mapping from ASL index to symbolic model names."
    output_solver_logs: "Output solver logs during scenario sub-problem solves"
    symbolic_solver_labels: "When interfacing with the solver, use symbol names derived from the model. For example, \"my_special_variable[1_2_3]\" instead of \"v1\". Useful for debugging. When using the ASL interface (--solver- io=nl), generates corresponding .row (constraints) and .col (variables) files. The ordering in these files provides a mapping from ASL index to symbolic model names."
    scenario_mip_gap: "Specifies the mipgap for all sub-problems"
    scenario_solver_options: "Solver options for all sub-problems"
    solver: "Specify the solver with which to solve scenario sub- problems.  The following solver types are currently supported: asl, baron, bilevel_blp_global, bilevel_blp_local, bilevel_ld, cbc, cplex, glpk, gurobi, mpec_minlp, mpec_nlp, openopt, os, path, pico, ps, py, scip, xpress; Default: cplex"
    solver_io: "The type of IO used to execute the solver.  Different solvers support different types of IO, but the following are common options: lp - generate LP files, nl - generate NL files, python - direct Python interface, os - generate OSiL XML files."
    solver_manager: "The type of solver manager used to coordinate scenario sub-problem solves. Default is serial."
    ph_pyro_required_workers: "Set the number of idle phsolverserver worker processes expected to be available when the PHPyro solver manager is selected. This option should be used when the number of worker threads is less than the total number of scenarios (or bundles). When this option is not used, PH will attempt to assign each scenario (or bundle) to a single phsolverserver until the timeout indicated by the --phpyro-workers-timeout option occurs."
    ph_pyro_workers_timeout: "Set the time limit (seconds) for finding idle phsolverserver worker processes to be used when the PHPyro solver manager is selected. This option is ignored when --phpyro-required-workers is set manually. Default is 30."
    pyro_hostname: "The hostname to bind on. By default, the first dispatcher found will be used. This option can also help speed up initialization time if the hostname is known (e.g., localhost)"
    disable_warm_starts: "Disable warm-start of scenario sub-problem solves in iterations >= 1. Default is False."
    shutdown_pyro: "Shut down all Pyro-related components associated with the Pyro and PH Pyro solver managers (if specified), including the dispatch server, name server, and any solver servers. Default is False."
    output_scenario_tree_solution: "Report the full solution (even leaves) in scenario tree format upon termination. Values represent averages, so convergence is not an issue. Default is False."
    output_solver_results: "Output solutions obtained after each scenario sub- problem solve"
    output_times: "Output timing statistics for various components"
    output_instance_construction_times: "Output timing statistics for instance construction timing statistics (client-side only when using PHPyro"
    verbose: "Generate verbose output for both initialization and execution. Default is False."
    disable_gc: "Disable the python garbage collecter. Default is False."
    keep_solver_files: "Retain temporary input and output files for scenario sub-problem solves"
    profile: "Enable profiling of Python code.  The value of this option is the number of functions that are summarized."
    traceback: "When an exception is thrown, show the entire call stack. Ignored if profiling is enabled. Default is False."
  }
}
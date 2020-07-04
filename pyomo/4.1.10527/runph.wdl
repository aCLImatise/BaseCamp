version 1.0

task Runph {
  input {
    String? model_directory
    String? instance_directory
    String? objective_sense_stage_based
    String? ph_warm_start_file
    String? ph_warm_start_index
    String? bounds_cfgfile
    String? scenario_tree_seed
    String? scenario_tree_down_sample_fraction
    String? scenario_bundle_specification
    String? create_random_bundles
    Boolean? async
    String? async_buffer_length
    String? rho_cfgfile
    String? aggregate_cfgfile
    Int? max_iterations
    String? term_diff_threshold
    Boolean? enable_free_discrete_count_convergence
    String? free_discrete_count_threshold
    Boolean? enable_normalized_term_diff_convergence
    Boolean? enable_term_diff_convergence
    Boolean? enable_outer_bound_convergence
    String? outer_bound_convergence_threshold
    String? linearize_non_binary_penalty_terms
    String? breakpoint_strategy
    Boolean? retain_quadratic_binary_terms
    Boolean? drop_proximal_terms
    Boolean? enable_ww_extensions
    String? ww_extension_cfgfile
    String? ww_extension_suffix_file
    String? ww_extension_annotation_file
    String? user_defined_extension
    Boolean? preprocess_fixed_variables
    String? scenario_mip_gap
    String? scenario_solver_options
    String? solver
    String? solver_io
    String? solver_manager
    String? pyro_hostname
    Boolean? handshake_with_ph_pyro
    String? ph_pyro_required_workers
    String? ph_pyro_workers_timeout
    Boolean? ph_pyro_transmit_leaf_stage_variable_solution
    Boolean? disable_warm_starts
    Boolean? shutdown_pyro
    Boolean? ef_disable_warm_starts
    String? ef_output_file
    Boolean? solve_ef
    String? ef_solver
    String? ef_solution_writer
    String? ef_solver_io
    String? ef_solver_manager
    String? ef_mip_gap
    Boolean? ef_disable_warm_start
    String? ef_solver_options
    Boolean? ef_output_solver_log
    Boolean? ef_keep_solver_files
    Boolean? ef_symbolic_solver_labels
    Boolean? output_scenario_tree_solution
    Boolean? output_solver_logs
    Boolean? symbolic_solver_labels
    Boolean? output_solver_results
    Boolean? output_times
    Boolean? output_instance_construction_times
    Boolean? report_only_statistics
    Boolean? report_solutions
    Boolean? report_weights
    Boolean? report_rhos_all_iterations
    Boolean? report_rhos_first_iterations
    Boolean? report_for_zero_variable_values
    Boolean? report_only_non_converged_variables
    String? solution_writer
    Boolean? suppress_continuous_variable_output
    Boolean? verbose
    Boolean? write_ef
    Boolean? disable_gc
    Boolean? keep_solver_files
    String? profile
    Boolean? traceback
  }
  command <<<
    runph \
      ~{if defined(model_directory) then ("--model-directory " +  '"' + model_directory + '"') else ""} \
      ~{if defined(instance_directory) then ("--instance-directory " +  '"' + instance_directory + '"') else ""} \
      ~{if defined(objective_sense_stage_based) then ("--objective-sense-stage-based " +  '"' + objective_sense_stage_based + '"') else ""} \
      ~{if defined(ph_warm_start_file) then ("--ph-warmstart-file " +  '"' + ph_warm_start_file + '"') else ""} \
      ~{if defined(ph_warm_start_index) then ("--ph-warmstart-index " +  '"' + ph_warm_start_index + '"') else ""} \
      ~{if defined(bounds_cfgfile) then ("--bounds-cfgfile " +  '"' + bounds_cfgfile + '"') else ""} \
      ~{if defined(scenario_tree_seed) then ("--scenario-tree-seed " +  '"' + scenario_tree_seed + '"') else ""} \
      ~{if defined(scenario_tree_down_sample_fraction) then ("--scenario-tree-downsample-fraction " +  '"' + scenario_tree_down_sample_fraction + '"') else ""} \
      ~{if defined(scenario_bundle_specification) then ("--scenario-bundle-specification " +  '"' + scenario_bundle_specification + '"') else ""} \
      ~{if defined(create_random_bundles) then ("--create-random-bundles " +  '"' + create_random_bundles + '"') else ""} \
      ~{true="--async" false="" async} \
      ~{if defined(async_buffer_length) then ("--async-buffer-length " +  '"' + async_buffer_length + '"') else ""} \
      ~{if defined(rho_cfgfile) then ("--rho-cfgfile " +  '"' + rho_cfgfile + '"') else ""} \
      ~{if defined(aggregate_cfgfile) then ("--aggregate-cfgfile " +  '"' + aggregate_cfgfile + '"') else ""} \
      ~{if defined(max_iterations) then ("--max-iterations " +  '"' + max_iterations + '"') else ""} \
      ~{if defined(term_diff_threshold) then ("--termdiff-threshold " +  '"' + term_diff_threshold + '"') else ""} \
      ~{true="--enable-free-discrete-count-convergence" false="" enable_free_discrete_count_convergence} \
      ~{if defined(free_discrete_count_threshold) then ("--free-discrete-count-threshold " +  '"' + free_discrete_count_threshold + '"') else ""} \
      ~{true="--enable-normalized-termdiff-convergence" false="" enable_normalized_term_diff_convergence} \
      ~{true="--enable-termdiff-convergence" false="" enable_term_diff_convergence} \
      ~{true="--enable-outer-bound-convergence" false="" enable_outer_bound_convergence} \
      ~{if defined(outer_bound_convergence_threshold) then ("--outer-bound-convergence-threshold " +  '"' + outer_bound_convergence_threshold + '"') else ""} \
      ~{if defined(linearize_non_binary_penalty_terms) then ("--linearize-nonbinary-penalty-terms " +  '"' + linearize_non_binary_penalty_terms + '"') else ""} \
      ~{if defined(breakpoint_strategy) then ("--breakpoint-strategy " +  '"' + breakpoint_strategy + '"') else ""} \
      ~{true="--retain-quadratic-binary-terms" false="" retain_quadratic_binary_terms} \
      ~{true="--drop-proximal-terms" false="" drop_proximal_terms} \
      ~{true="--enable-ww-extensions" false="" enable_ww_extensions} \
      ~{if defined(ww_extension_cfgfile) then ("--ww-extension-cfgfile " +  '"' + ww_extension_cfgfile + '"') else ""} \
      ~{if defined(ww_extension_suffix_file) then ("--ww-extension-suffixfile " +  '"' + ww_extension_suffix_file + '"') else ""} \
      ~{if defined(ww_extension_annotation_file) then ("--ww-extension-annotationfile " +  '"' + ww_extension_annotation_file + '"') else ""} \
      ~{if defined(user_defined_extension) then ("--user-defined-extension " +  '"' + user_defined_extension + '"') else ""} \
      ~{true="--preprocess-fixed-variables" false="" preprocess_fixed_variables} \
      ~{if defined(scenario_mip_gap) then ("--scenario-mipgap " +  '"' + scenario_mip_gap + '"') else ""} \
      ~{if defined(scenario_solver_options) then ("--scenario-solver-options " +  '"' + scenario_solver_options + '"') else ""} \
      ~{if defined(solver) then ("--solver " +  '"' + solver + '"') else ""} \
      ~{if defined(solver_io) then ("--solver-io " +  '"' + solver_io + '"') else ""} \
      ~{if defined(solver_manager) then ("--solver-manager " +  '"' + solver_manager + '"') else ""} \
      ~{if defined(pyro_hostname) then ("--pyro-hostname " +  '"' + pyro_hostname + '"') else ""} \
      ~{true="--handshake-with-phpyro" false="" handshake_with_ph_pyro} \
      ~{if defined(ph_pyro_required_workers) then ("--phpyro-required-workers " +  '"' + ph_pyro_required_workers + '"') else ""} \
      ~{if defined(ph_pyro_workers_timeout) then ("--phpyro-workers-timeout " +  '"' + ph_pyro_workers_timeout + '"') else ""} \
      ~{true="--phpyro-transmit-leaf-stage-variable-solution" false="" ph_pyro_transmit_leaf_stage_variable_solution} \
      ~{true="--disable-warmstarts" false="" disable_warm_starts} \
      ~{true="--shutdown-pyro" false="" shutdown_pyro} \
      ~{true="--ef-disable-warmstarts" false="" ef_disable_warm_starts} \
      ~{if defined(ef_output_file) then ("--ef-output-file " +  '"' + ef_output_file + '"') else ""} \
      ~{true="--solve-ef" false="" solve_ef} \
      ~{if defined(ef_solver) then ("--ef-solver " +  '"' + ef_solver + '"') else ""} \
      ~{if defined(ef_solution_writer) then ("--ef-solution-writer " +  '"' + ef_solution_writer + '"') else ""} \
      ~{if defined(ef_solver_io) then ("--ef-solver-io " +  '"' + ef_solver_io + '"') else ""} \
      ~{if defined(ef_solver_manager) then ("--ef-solver-manager " +  '"' + ef_solver_manager + '"') else ""} \
      ~{if defined(ef_mip_gap) then ("--ef-mipgap " +  '"' + ef_mip_gap + '"') else ""} \
      ~{true="--ef-disable-warmstart" false="" ef_disable_warm_start} \
      ~{if defined(ef_solver_options) then ("--ef-solver-options " +  '"' + ef_solver_options + '"') else ""} \
      ~{true="--ef-output-solver-log" false="" ef_output_solver_log} \
      ~{true="--ef-keep-solver-files" false="" ef_keep_solver_files} \
      ~{true="--ef-symbolic-solver-labels" false="" ef_symbolic_solver_labels} \
      ~{true="--output-scenario-tree-solution" false="" output_scenario_tree_solution} \
      ~{true="--output-solver-logs" false="" output_solver_logs} \
      ~{true="--symbolic-solver-labels" false="" symbolic_solver_labels} \
      ~{true="--output-solver-results" false="" output_solver_results} \
      ~{true="--output-times" false="" output_times} \
      ~{true="--output-instance-construction-times" false="" output_instance_construction_times} \
      ~{true="--report-only-statistics" false="" report_only_statistics} \
      ~{true="--report-solutions" false="" report_solutions} \
      ~{true="--report-weights" false="" report_weights} \
      ~{true="--report-rhos-all-iterations" false="" report_rhos_all_iterations} \
      ~{true="--report-rhos-first-iterations" false="" report_rhos_first_iterations} \
      ~{true="--report-for-zero-variable-values" false="" report_for_zero_variable_values} \
      ~{true="--report-only-nonconverged-variables" false="" report_only_non_converged_variables} \
      ~{if defined(solution_writer) then ("--solution-writer " +  '"' + solution_writer + '"') else ""} \
      ~{true="--suppress-continuous-variable-output" false="" suppress_continuous_variable_output} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--write-ef" false="" write_ef} \
      ~{true="--disable-gc" false="" disable_gc} \
      ~{true="--keep-solver-files" false="" keep_solver_files} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{true="--traceback" false="" traceback}
  >>>
  parameter_meta {
    model_directory: "The directory in which all model (reference and scenario) definitions are stored. Default is \".\"."
    instance_directory: "The directory in which all instance (reference and scenario) definitions are stored. This option is required if no callback is found in the model file."
    objective_sense_stage_based: "The objective sense to use for the auto-generated scenario instance objective, which is equal to the sum of the scenario-tree stage costs. Default is None, indicating an Objective has been declared on the reference model."
    ph_warm_start_file: "Disable iteration 0 solves and warmstarts rho, weight, and xbar parameters from solution file."
    ph_warm_start_index: "Indicates the index (ph iteration) of the warmstart that should be loaded from a ph history file."
    bounds_cfgfile: "The name of python script containing a ph_boundsetter_callback function to compute and update scenario variable bounds. Default is None."
    scenario_tree_seed: "The random seed associated with manipulation operations on the scenario tree (e.g., down-sampling or bundle creation). Default is 0, indicating unassigned."
    scenario_tree_down_sample_fraction: "The proportion of the scenarios in the scenario tree that are actually used. Specific scenarios are selected at random. Default is 1.0, indicating no down-sampling."
    scenario_bundle_specification: "The name of the scenario bundling specification to be used when executing Progressive Hedging. Default is None, indicating no bundling is employed. If the specified name ends with a .dat suffix, the argument is interpreted as a filename. Otherwise, the name is interpreted as a file in the instance directory, constructed by adding the .dat suffix automatically"
    create_random_bundles: "Specification to create the indicated number of random, equally-sized (to the degree possible) scenario bundles. Default is 0, indicating disabled."
    async: "Run PH in asychronous mode after iteration 0. Default is False."
    async_buffer_length: "Number of scenarios to collect, if in async mode, before doing statistics and weight updates. Default is 1."
    rho_cfgfile: "The name of python script containing a ph_rhosetter_callback function to compute and update PH rho values. Default is None."
    aggregate_cfgfile: "The name of python script containing a ph_aggregategetter_callback function to collect and store aggregate scenario data on PH. Default is None."
    max_iterations: "The maximal number of PH iterations. Default is 100."
    term_diff_threshold: "The convergence threshold used in the term-diff and normalized term-diff convergence criteria. Default is 0.0001."
    enable_free_discrete_count_convergence: "Terminate PH based on the free discrete variable count convergence metric. Default is False."
    free_discrete_count_threshold: "The convergence threshold used in the criterion based on when the free discrete variable count convergence criterion. Default is 20."
    enable_normalized_term_diff_convergence: "Terminate PH based on the normalized termdiff convergence metric. Default is True."
    enable_term_diff_convergence: "Terminate PH based on the termdiff convergence metric. Default is False."
    enable_outer_bound_convergence: "Terminate PH based on the outer bound convergence metric. Default is False."
    outer_bound_convergence_threshold: "The convergence threshold used in the outer bound convergerence criterion. Default is None, indicating unassigned"
    linearize_non_binary_penalty_terms: "Approximate the PH quadratic term for non-binary variables with a piece-wise linear function, using the supplied number of equal-length pieces from each bound to the average"
    breakpoint_strategy: "Specify the strategy to distribute breakpoints on the [lb, ub] interval of each variable when linearizing. 0 indicates uniform distribution. 1 indicates breakpoints at the node min and max, uniformly in- between. 2 indicates more aggressive concentration of breakpoints near the observed node min/max."
    retain_quadratic_binary_terms: "Do not linearize PH objective terms involving binary decision variables"
    drop_proximal_terms: "Eliminate proximal terms (i.e., the quadratic penalty terms) from the weighted PH objective. Default is False."
    enable_ww_extensions: "Enable the Watson-Woodruff PH extensions plugin. Default is False."
    ww_extension_cfgfile: "The name of a configuration file for the Watson- Woodruff PH extensions plugin."
    ww_extension_suffix_file: "The name of a variable suffix file for the Watson- Woodruff PH extensions plugin."
    ww_extension_annotation_file: "The name of a variable annotation file for the Watson- Woodruff PH extensions plugin."
    user_defined_extension: "The name of a python module specifying a user-defined PH extension plugin."
    preprocess_fixed_variables: "Preprocess fixed/freed variables in scenario instances, rather than write them to solver plugins. Default is False."
    scenario_mip_gap: "Specifies the mipgap for all PH scenario sub-problems"
    scenario_solver_options: "Solver options for all PH scenario sub-problems"
    solver: "Specify the solver with which to solve scenario sub- problems.  The following solver types are currently supported: asl, baron, bilevel_blp_global, bilevel_blp_local, bilevel_ld, cbc, cplex, glpk, gurobi, mpec_minlp, mpec_nlp, openopt, os, path, pico, ps, py, scip, xpress; Default: cplex"
    solver_io: "The type of IO used to execute the solver.  Different solvers support different types of IO, but the following are common options: lp - generate LP files, nl - generate NL files, python - direct Python interface, os - generate OSiL XML files."
    solver_manager: "The type of solver manager used to coordinate scenario sub-problem solves. Default is serial."
    pyro_hostname: "The hostname to bind on. By default, the first dispatcher found will be used. This option can also help speed up initialization time if the hostname is known (e.g., localhost)"
    handshake_with_ph_pyro: "When updating weights, xbars, and rhos across the PHPyro solver manager, it is often expedient to ignore the simple acknowledgement results returned by PH solver servers. Enabling this option instead enables hand-shaking, to ensure message receipt. Clearly only makes sense if the PHPyro solver manager is selected"
    ph_pyro_required_workers: "Set the number of idle phsolverserver worker processes expected to be available when the PHPyro solver manager is selected. This option should be used when the number of worker threads is less than the total number of scenarios (or bundles). When this option is not used, PH will attempt to assign each scenario (or bundle) to a single phsolverserver until the timeout indicated by the --phpyro-workers-timeout option occurs."
    ph_pyro_workers_timeout: "Set the time limit (seconds) for finding idle phsolverserver worker processes to be used when the PHPyro solver manager is selected. This option is ignored when --phpyro-required-workers is set manually. Default is 30."
    ph_pyro_transmit_leaf_stage_variable_solution: "By default, when running PH using the PHPyro solver manager, leaf-stage variable solutions are not transmitted back to the master PH instance during intermediate PH iterations. This flag will override that behavior for the rare cases where these values are needed. Using this option will possibly have a negative impact on runtime for PH iterations. When PH exits, variable values are collected from all stages whether or not this option was used. Also, note that PH extensions have the ability to override this flag at runtime."
    disable_warm_starts: "Disable warm-start of scenario sub-problem solves in PH iterations >= 1. Default is False."
    shutdown_pyro: "Shut down all Pyro-related components associated with the Pyro and PH Pyro solver managers (if specified), including the dispatch server, name server, and any solver servers. Default is False."
    ef_disable_warm_starts: "Override the runph option of the same name during the EF solve."
    ef_output_file: "The basename of the extensive form output file (currently only LP and NL formats are supported), if writing or solving of the extensive form is enabled. The full output filename will be of the form '<basename>.{lp,nl}', where the suffix type is determined by the value of the --ef-solver-io or --solver-io option. Default is 'efout'."
    solve_ef: "Upon termination, create the extensive-form model and solve it - accounting for all fixed variables."
    ef_solver: "Override the runph option of the same name during the EF solve."
    ef_solution_writer: "The plugin invoked to write the scenario tree solution following the EF solve. If specified, overrides the runph option of the same name; otherwise, the runph option value will be used."
    ef_solver_io: "Override the runph option of the same name during the EF solve."
    ef_solver_manager: "The type of solver manager used to execute the extensive form solve. Default is serial. This option is not inherited from the runph scenario-based option."
    ef_mip_gap: "Specifies the mipgap for the EF solve. This option is not inherited from the runph scenario-based option."
    ef_disable_warm_start: "Disable warm-start of the post-PH EF solve. Default is False. This option is not inherited from the runph scenario-based option."
    ef_solver_options: "Solver options for the EF problem. This option is not inherited from the runph scenario-based option."
    ef_output_solver_log: "Override the runph option of the same name during the EF solve."
    ef_keep_solver_files: "Override the runph option of the same name during the EF solve."
    ef_symbolic_solver_labels: "Override the runph option of the same name during the EF solve."
    output_scenario_tree_solution: "If a feasible solution can be found, report it (even leaves) in scenario tree format upon termination. Default is False."
    output_solver_logs: "Output solver logs during scenario sub-problem solves"
    symbolic_solver_labels: "When interfacing with the solver, use symbol names derived from the model. For example, \"my_special_variable[1_2_3]\" instead of \"v1\". Useful for debugging. When using the ASL interface (--solver- io=nl), generates corresponding .row (constraints) and .col (variables) files. The ordering in these files provides a mapping from ASL index to symbolic model names."
    output_solver_results: "Output solutions obtained after each scenario sub- problem solve"
    output_times: "Output timing statistics for various PH components"
    output_instance_construction_times: "Output timing statistics for instance construction (client-side only when using PHPyro"
    report_only_statistics: "When reporting solutions (if enabled), only output per-variable statistics - not the individual scenario values. Default is False."
    report_solutions: "Always report PH solutions after each iteration. Enabled if --verbose is enabled. Default is False."
    report_weights: "Always report PH weights prior to each iteration. Enabled if --verbose is enabled. Default is False."
    report_rhos_all_iterations: "Always report PH rhos prior to each iteration. Default is False."
    report_rhos_first_iterations: "Report rhos prior to PH iteration 1. Enabled if --verbose is enabled. Default is False."
    report_for_zero_variable_values: "Report statistics (variables and weights) for all variables, not just those with values differing from 0. Default is False."
    report_only_non_converged_variables: "Report statistics (variables and weights) only for non-converged variables. Default is False."
    solution_writer: "The plugin invoked to write the scenario tree solution. Defaults to the empty list."
    suppress_continuous_variable_output: "Eliminate PH-related output involving continuous variables."
    verbose: "Generate verbose output for both initialization and execution. Default is False."
    write_ef: "Upon termination, create the extensive-form model and write it to a file - accounting for all fixed variables."
    disable_gc: "Disable the python garbage collecter. Default is False."
    keep_solver_files: "Retain temporary input and output files for scenario sub-problem solves"
    profile: "Enable profiling of Python code.  The value of this option is the number of functions that are summarized."
    traceback: "When an exception is thrown, show the entire call stack. Ignored if profiling is enabled. Default is False."
  }
}
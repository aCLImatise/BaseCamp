class: CommandLineTool
id: computeconf.cwl
inputs:
- id: model_directory
  doc: The directory in which all model (reference and scenario) definitions are stored.
    Default is ".".
  type: string
  inputBinding:
    prefix: --model-directory
- id: instance_directory
  doc: The directory in which all instance (reference and scenario) definitions are
    stored. This option is required if no callback is found in the model file.
  type: string
  inputBinding:
    prefix: --instance-directory
- id: objective_sense_stage_based
  doc: The objective sense to use for the auto-generated scenario instance objective,
    which is equal to the sum of the scenario-tree stage costs. Default is None, indicating
    an Objective has been declared on the reference model.
  type: string
  inputBinding:
    prefix: --objective-sense-stage-based
- id: ph_warm_start_file
  doc: Disable iteration 0 solves and warmstarts rho, weight, and xbar parameters
    from solution file.
  type: string
  inputBinding:
    prefix: --ph-warmstart-file
- id: ph_warm_start_index
  doc: Indicates the index (ph iteration) of the warmstart that should be loaded from
    a ph history file.
  type: string
  inputBinding:
    prefix: --ph-warmstart-index
- id: bounds_cfgfile
  doc: The name of python script containing a ph_boundsetter_callback function to
    compute and update scenario variable bounds. Default is None.
  type: string
  inputBinding:
    prefix: --bounds-cfgfile
- id: scenario_tree_seed
  doc: The random seed associated with manipulation operations on the scenario tree
    (e.g., down-sampling or bundle creation). Default is 0, indicating unassigned.
  type: string
  inputBinding:
    prefix: --scenario-tree-seed
- id: scenario_tree_down_sample_fraction
  doc: The proportion of the scenarios in the scenario tree that are actually used.
    Specific scenarios are selected at random. Default is 1.0, indicating no down-sampling.
  type: string
  inputBinding:
    prefix: --scenario-tree-downsample-fraction
- id: scenario_bundle_specification
  doc: The name of the scenario bundling specification to be used when executing Progressive
    Hedging. Default is None, indicating no bundling is employed. If the specified
    name ends with a .dat suffix, the argument is interpreted as a filename. Otherwise,
    the name is interpreted as a file in the instance directory, constructed by adding
    the .dat suffix automatically
  type: string
  inputBinding:
    prefix: --scenario-bundle-specification
- id: create_random_bundles
  doc: Specification to create the indicated number of random, equally-sized (to the
    degree possible) scenario bundles. Default is 0, indicating disabled.
  type: string
  inputBinding:
    prefix: --create-random-bundles
- id: async
  doc: Run PH in asychronous mode after iteration 0. Default is False.
  type: boolean
  inputBinding:
    prefix: --async
- id: async_buffer_length
  doc: Number of scenarios to collect, if in async mode, before doing statistics and
    weight updates. Default is 1.
  type: string
  inputBinding:
    prefix: --async-buffer-length
- id: rho_cfgfile
  doc: The name of python script containing a ph_rhosetter_callback function to compute
    and update PH rho values. Default is None.
  type: string
  inputBinding:
    prefix: --rho-cfgfile
- id: aggregate_cfgfile
  doc: The name of python script containing a ph_aggregategetter_callback function
    to collect and store aggregate scenario data on PH. Default is None.
  type: string
  inputBinding:
    prefix: --aggregate-cfgfile
- id: max_iterations
  doc: The maximal number of PH iterations. Default is 100.
  type: long
  inputBinding:
    prefix: --max-iterations
- id: term_diff_threshold
  doc: The convergence threshold used in the term-diff and normalized term-diff convergence
    criteria. Default is 0.0001.
  type: string
  inputBinding:
    prefix: --termdiff-threshold
- id: enable_free_discrete_count_convergence
  doc: Terminate PH based on the free discrete variable count convergence metric.
    Default is False.
  type: boolean
  inputBinding:
    prefix: --enable-free-discrete-count-convergence
- id: free_discrete_count_threshold
  doc: The convergence threshold used in the criterion based on when the free discrete
    variable count convergence criterion. Default is 20.
  type: string
  inputBinding:
    prefix: --free-discrete-count-threshold
- id: enable_normalized_term_diff_convergence
  doc: Terminate PH based on the normalized termdiff convergence metric. Default is
    True.
  type: boolean
  inputBinding:
    prefix: --enable-normalized-termdiff-convergence
- id: enable_term_diff_convergence
  doc: Terminate PH based on the termdiff convergence metric. Default is False.
  type: boolean
  inputBinding:
    prefix: --enable-termdiff-convergence
- id: enable_outer_bound_convergence
  doc: Terminate PH based on the outer bound convergence metric. Default is False.
  type: boolean
  inputBinding:
    prefix: --enable-outer-bound-convergence
- id: outer_bound_convergence_threshold
  doc: The convergence threshold used in the outer bound convergerence criterion.
    Default is None, indicating unassigned
  type: string
  inputBinding:
    prefix: --outer-bound-convergence-threshold
- id: linearize_non_binary_penalty_terms
  doc: Approximate the PH quadratic term for non-binary variables with a piece-wise
    linear function, using the supplied number of equal-length pieces from each bound
    to the average
  type: string
  inputBinding:
    prefix: --linearize-nonbinary-penalty-terms
- id: breakpoint_strategy
  doc: Specify the strategy to distribute breakpoints on the [lb, ub] interval of
    each variable when linearizing. 0 indicates uniform distribution. 1 indicates
    breakpoints at the node min and max, uniformly in- between. 2 indicates more aggressive
    concentration of breakpoints near the observed node min/max.
  type: string
  inputBinding:
    prefix: --breakpoint-strategy
- id: retain_quadratic_binary_terms
  doc: Do not linearize PH objective terms involving binary decision variables
  type: boolean
  inputBinding:
    prefix: --retain-quadratic-binary-terms
- id: drop_proximal_terms
  doc: Eliminate proximal terms (i.e., the quadratic penalty terms) from the weighted
    PH objective. Default is False.
  type: boolean
  inputBinding:
    prefix: --drop-proximal-terms
- id: enable_ww_extensions
  doc: Enable the Watson-Woodruff PH extensions plugin. Default is False.
  type: boolean
  inputBinding:
    prefix: --enable-ww-extensions
- id: ww_extension_cfgfile
  doc: The name of a configuration file for the Watson- Woodruff PH extensions plugin.
  type: string
  inputBinding:
    prefix: --ww-extension-cfgfile
- id: ww_extension_suffix_file
  doc: The name of a variable suffix file for the Watson- Woodruff PH extensions plugin.
  type: string
  inputBinding:
    prefix: --ww-extension-suffixfile
- id: ww_extension_annotation_file
  doc: The name of a variable annotation file for the Watson- Woodruff PH extensions
    plugin.
  type: string
  inputBinding:
    prefix: --ww-extension-annotationfile
- id: user_defined_extension
  doc: The name of a python module specifying a user-defined PH extension plugin.
  type: string
  inputBinding:
    prefix: --user-defined-extension
- id: preprocess_fixed_variables
  doc: Preprocess fixed/freed variables in scenario instances, rather than write them
    to solver plugins. Default is False.
  type: boolean
  inputBinding:
    prefix: --preprocess-fixed-variables
- id: scenario_mip_gap
  doc: Specifies the mipgap for all PH scenario sub-problems
  type: string
  inputBinding:
    prefix: --scenario-mipgap
- id: scenario_solver_options
  doc: Solver options for all PH scenario sub-problems
  type: string
  inputBinding:
    prefix: --scenario-solver-options
- id: solver
  doc: 'Specify the solver with which to solve scenario sub- problems.  The following
    solver types are currently supported: asl, baron, bilevel_blp_global, bilevel_blp_local,
    bilevel_ld, cbc, cplex, glpk, gurobi, mpec_minlp, mpec_nlp, openopt, os, path,
    pico, ps, py, scip, xpress; Default: cplex'
  type: string
  inputBinding:
    prefix: --solver
- id: solver_io
  doc: 'The type of IO used to execute the solver.  Different solvers support different
    types of IO, but the following are common options: lp - generate LP files, nl
    - generate NL files, python - direct Python interface, os - generate OSiL XML
    files.'
  type: string
  inputBinding:
    prefix: --solver-io
- id: solver_manager
  doc: The type of solver manager used to coordinate scenario sub-problem solves.
    Default is serial.
  type: string
  inputBinding:
    prefix: --solver-manager
- id: pyro_hostname
  doc: The hostname to bind on. By default, the first dispatcher found will be used.
    This option can also help speed up initialization time if the hostname is known
    (e.g., localhost)
  type: string
  inputBinding:
    prefix: --pyro-hostname
- id: handshake_with_ph_pyro
  doc: When updating weights, xbars, and rhos across the PHPyro solver manager, it
    is often expedient to ignore the simple acknowledgement results returned by PH
    solver servers. Enabling this option instead enables hand-shaking, to ensure message
    receipt. Clearly only makes sense if the PHPyro solver manager is selected
  type: boolean
  inputBinding:
    prefix: --handshake-with-phpyro
- id: ph_pyro_required_workers
  doc: Set the number of idle phsolverserver worker processes expected to be available
    when the PHPyro solver manager is selected. This option should be used when the
    number of worker threads is less than the total number of scenarios (or bundles).
    When this option is not used, PH will attempt to assign each scenario (or bundle)
    to a single phsolverserver until the timeout indicated by the --phpyro-workers-timeout
    option occurs.
  type: string
  inputBinding:
    prefix: --phpyro-required-workers
- id: ph_pyro_workers_timeout
  doc: Set the time limit (seconds) for finding idle phsolverserver worker processes
    to be used when the PHPyro solver manager is selected. This option is ignored
    when --phpyro-required-workers is set manually. Default is 30.
  type: string
  inputBinding:
    prefix: --phpyro-workers-timeout
- id: ph_pyro_transmit_leaf_stage_variable_solution
  doc: By default, when running PH using the PHPyro solver manager, leaf-stage variable
    solutions are not transmitted back to the master PH instance during intermediate
    PH iterations. This flag will override that behavior for the rare cases where
    these values are needed. Using this option will possibly have a negative impact
    on runtime for PH iterations. When PH exits, variable values are collected from
    all stages whether or not this option was used. Also, note that PH extensions
    have the ability to override this flag at runtime.
  type: boolean
  inputBinding:
    prefix: --phpyro-transmit-leaf-stage-variable-solution
- id: disable_warm_starts
  doc: Disable warm-start of scenario sub-problem solves in PH iterations >= 1. Default
    is False.
  type: boolean
  inputBinding:
    prefix: --disable-warmstarts
- id: shutdown_pyro
  doc: Shut down all Pyro-related components associated with the Pyro and PH Pyro
    solver managers (if specified), including the dispatch server, name server, and
    any solver servers. Default is False.
  type: boolean
  inputBinding:
    prefix: --shutdown-pyro
- id: ef_disable_warm_starts
  doc: Override the runph option of the same name during the EF solve.
  type: boolean
  inputBinding:
    prefix: --ef-disable-warmstarts
- id: ef_output_file
  doc: The basename of the extensive form output file (currently only LP and NL formats
    are supported), if writing or solving of the extensive form is enabled. The full
    output filename will be of the form '<basename>.{lp,nl}', where the suffix type
    is determined by the value of the --ef-solver-io or --solver-io option. Default
    is 'efout'.
  type: string
  inputBinding:
    prefix: --ef-output-file
- id: solve_ef
  doc: Upon termination, create the extensive-form model and solve it - accounting
    for all fixed variables.
  type: boolean
  inputBinding:
    prefix: --solve-ef
- id: ef_solver
  doc: Override the runph option of the same name during the EF solve.
  type: string
  inputBinding:
    prefix: --ef-solver
- id: ef_solution_writer
  doc: The plugin invoked to write the scenario tree solution following the EF solve.
    If specified, overrides the runph option of the same name; otherwise, the runph
    option value will be used.
  type: string
  inputBinding:
    prefix: --ef-solution-writer
- id: ef_solver_io
  doc: Override the runph option of the same name during the EF solve.
  type: string
  inputBinding:
    prefix: --ef-solver-io
- id: ef_solver_manager
  doc: The type of solver manager used to execute the extensive form solve. Default
    is serial. This option is not inherited from the runph scenario-based option.
  type: string
  inputBinding:
    prefix: --ef-solver-manager
- id: ef_mip_gap
  doc: Specifies the mipgap for the EF solve. This option is not inherited from the
    runph scenario-based option.
  type: string
  inputBinding:
    prefix: --ef-mipgap
- id: ef_disable_warm_start
  doc: Disable warm-start of the post-PH EF solve. Default is False. This option is
    not inherited from the runph scenario-based option.
  type: boolean
  inputBinding:
    prefix: --ef-disable-warmstart
- id: ef_solver_options
  doc: Solver options for the EF problem. This option is not inherited from the runph
    scenario-based option.
  type: string
  inputBinding:
    prefix: --ef-solver-options
- id: ef_output_solver_log
  doc: Override the runph option of the same name during the EF solve.
  type: boolean
  inputBinding:
    prefix: --ef-output-solver-log
- id: ef_keep_solver_files
  doc: Override the runph option of the same name during the EF solve.
  type: boolean
  inputBinding:
    prefix: --ef-keep-solver-files
- id: ef_symbolic_solver_labels
  doc: Override the runph option of the same name during the EF solve.
  type: boolean
  inputBinding:
    prefix: --ef-symbolic-solver-labels
- id: output_scenario_tree_solution
  doc: If a feasible solution can be found, report it (even leaves) in scenario tree
    format upon termination. Default is False.
  type: boolean
  inputBinding:
    prefix: --output-scenario-tree-solution
- id: output_solver_logs
  doc: Output solver logs during scenario sub-problem solves
  type: boolean
  inputBinding:
    prefix: --output-solver-logs
- id: symbolic_solver_labels
  doc: When interfacing with the solver, use symbol names derived from the model.
    For example, "my_special_variable[1_2_3]" instead of "v1". Useful for debugging.
    When using the ASL interface (--solver- io=nl), generates corresponding .row (constraints)
    and .col (variables) files. The ordering in these files provides a mapping from
    ASL index to symbolic model names.
  type: boolean
  inputBinding:
    prefix: --symbolic-solver-labels
- id: output_solver_results
  doc: Output solutions obtained after each scenario sub- problem solve
  type: boolean
  inputBinding:
    prefix: --output-solver-results
- id: output_times
  doc: Output timing statistics for various PH components
  type: boolean
  inputBinding:
    prefix: --output-times
- id: output_instance_construction_times
  doc: Output timing statistics for instance construction (client-side only when using
    PHPyro
  type: boolean
  inputBinding:
    prefix: --output-instance-construction-times
- id: report_only_statistics
  doc: When reporting solutions (if enabled), only output per-variable statistics
    - not the individual scenario values. Default is False.
  type: boolean
  inputBinding:
    prefix: --report-only-statistics
- id: report_solutions
  doc: Always report PH solutions after each iteration. Enabled if --verbose is enabled.
    Default is False.
  type: boolean
  inputBinding:
    prefix: --report-solutions
- id: report_weights
  doc: Always report PH weights prior to each iteration. Enabled if --verbose is enabled.
    Default is False.
  type: boolean
  inputBinding:
    prefix: --report-weights
- id: report_rhos_all_iterations
  doc: Always report PH rhos prior to each iteration. Default is False.
  type: boolean
  inputBinding:
    prefix: --report-rhos-all-iterations
- id: report_rhos_first_iterations
  doc: Report rhos prior to PH iteration 1. Enabled if --verbose is enabled. Default
    is False.
  type: boolean
  inputBinding:
    prefix: --report-rhos-first-iterations
- id: report_for_zero_variable_values
  doc: Report statistics (variables and weights) for all variables, not just those
    with values differing from 0. Default is False.
  type: boolean
  inputBinding:
    prefix: --report-for-zero-variable-values
- id: report_only_non_converged_variables
  doc: Report statistics (variables and weights) only for non-converged variables.
    Default is False.
  type: boolean
  inputBinding:
    prefix: --report-only-nonconverged-variables
- id: solution_writer
  doc: The plugin invoked to write the scenario tree solution. Defaults to the empty
    list.
  type: string
  inputBinding:
    prefix: --solution-writer
- id: suppress_continuous_variable_output
  doc: Eliminate PH-related output involving continuous variables.
  type: boolean
  inputBinding:
    prefix: --suppress-continuous-variable-output
- id: verbose
  doc: Generate verbose output for both initialization and execution. Default is False.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: write_ef
  doc: Upon termination, create the extensive-form model and write it to a file -
    accounting for all fixed variables.
  type: boolean
  inputBinding:
    prefix: --write-ef
- id: disable_gc
  doc: Disable the python garbage collecter. Default is False.
  type: boolean
  inputBinding:
    prefix: --disable-gc
- id: keep_solver_files
  doc: Retain temporary input and output files for scenario sub-problem solves
  type: boolean
  inputBinding:
    prefix: --keep-solver-files
- id: profile
  doc: Enable profiling of Python code.  The value of this option is the number of
    functions that are summarized.
  type: string
  inputBinding:
    prefix: --profile
- id: traceback
  doc: When an exception is thrown, show the entire call stack. Ignored if profiling
    is enabled. Default is False.
  type: boolean
  inputBinding:
    prefix: --traceback
outputs: []
cwlVersion: v1.1
baseCommand:
- computeconf

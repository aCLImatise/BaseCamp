class: CommandLineTool
id: runbenders.cwl
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
- id: max_iterations
  doc: The maximal number of benders iterations. Default is 100.
  type: long
  inputBinding:
    prefix: --max-iterations
- id: percent_gap
  doc: Percent optimality gap required for convergence. Default is 0.0001%.
  type: string
  inputBinding:
    prefix: --percent-gap
- id: multi_cut_level
  doc: The number of cut groups added to the master benders problem each iteration.
    Default is 1.
  type: string
  inputBinding:
    prefix: --multicut-level
- id: user_bound
  doc: A user provided best bound for the relaxed (master) problem. When provided,
    will be used in the optimality gap calculation if appropriate.
  type: string
  inputBinding:
    prefix: --user-bound
- id: master_disable_warm_starts
  doc: Disable warm-start of the benders master problem solves. Default is False.
  type: boolean
  inputBinding:
    prefix: --master-disable-warmstarts
- id: master_solver
  doc: 'Specify the solver with which to solve the master benders problem. The following
    solver types are currently supported: asl, baron, bilevel_blp_global, bilevel_blp_local,
    bilevel_ld, cbc, cplex, glpk, gurobi, mpec_minlp, mpec_nlp, openopt, os, path,
    pico, ps, py, scip, xpress; Default: cplex'
  type: string
  inputBinding:
    prefix: --master-solver
- id: master_solver_io
  doc: 'The type of IO used to execute the master solver. Different solvers support
    different types of IO, but the following are common options: lp - generate LP
    files, nl - generate NL files, python - direct Python interface, os - generate
    OSiL XML files.'
  type: string
  inputBinding:
    prefix: --master-solver-io
- id: master_mip_gap
  doc: Specifies the mipgap for the master benders solves.
  type: string
  inputBinding:
    prefix: --master-mipgap
- id: master_solver_options
  doc: Solver options for the master benders problem.
  type: string
  inputBinding:
    prefix: --master-solver-options
- id: master_output_solver_log
  doc: Output solver logs during master benders solves solves
  type: boolean
  inputBinding:
    prefix: --master-output-solver-log
- id: master_keep_solver_files
  doc: Retain temporary input and output files for master benders solves
  type: boolean
  inputBinding:
    prefix: --master-keep-solver-files
- id: master_symbolic_solver_labels
  doc: When interfacing with the solver, use symbol names derived from the model.
    For example, "my_special_variable[1_2_3]" instead of "v1". Useful for debugging.
    When using the ASL interface (--solver- io=nl), generates corresponding .row (constraints)
    and .col (variables) files. The ordering in these files provides a mapping from
    ASL index to symbolic model names.
  type: boolean
  inputBinding:
    prefix: --master-symbolic-solver-labels
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
- id: scenario_mip_gap
  doc: Specifies the mipgap for all sub-problems
  type: string
  inputBinding:
    prefix: --scenario-mipgap
- id: scenario_solver_options
  doc: Solver options for all sub-problems
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
- id: pyro_hostname
  doc: The hostname to bind on. By default, the first dispatcher found will be used.
    This option can also help speed up initialization time if the hostname is known
    (e.g., localhost)
  type: string
  inputBinding:
    prefix: --pyro-hostname
- id: disable_warm_starts
  doc: Disable warm-start of scenario sub-problem solves in iterations >= 1. Default
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
- id: output_scenario_tree_solution
  doc: Report the full solution (even leaves) in scenario tree format upon termination.
    Values represent averages, so convergence is not an issue. Default is False.
  type: boolean
  inputBinding:
    prefix: --output-scenario-tree-solution
- id: output_solver_results
  doc: Output solutions obtained after each scenario sub- problem solve
  type: boolean
  inputBinding:
    prefix: --output-solver-results
- id: output_times
  doc: Output timing statistics for various components
  type: boolean
  inputBinding:
    prefix: --output-times
- id: output_instance_construction_times
  doc: Output timing statistics for instance construction timing statistics (client-side
    only when using PHPyro
  type: boolean
  inputBinding:
    prefix: --output-instance-construction-times
- id: verbose
  doc: Generate verbose output for both initialization and execution. Default is False.
  type: boolean
  inputBinding:
    prefix: --verbose
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
- runbenders

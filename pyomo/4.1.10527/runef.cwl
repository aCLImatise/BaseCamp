class: CommandLineTool
id: runef.cwl
inputs:
- id: instance_directory
  doc: The directory in which all instance (reference and scenario) definitions are
    stored. This option is required if no callback is found in the model file.
  type: string
  inputBinding:
    prefix: --instance-directory
- id: model_directory
  doc: The directory in which all model (reference and scenario) definitions are stored.
    Default is ".".
  type: string
  inputBinding:
    prefix: --model-directory
- id: objective_sense_stage_based
  doc: The objective sense to use for the auto-generated scenario instance objective,
    which is equal to the sum of the scenario-tree stage costs. Default is None, indicating
    an Objective has been declared on the reference model.
  type: string
  inputBinding:
    prefix: --objective-sense-stage-based
- id: scenario_tree_seed
  doc: The random seed associated with manipulation operations on the scenario tree
    (e.g., down-sampling). Default is 0, indicating unassigned.
  type: string
  inputBinding:
    prefix: --scenario-tree-seed
- id: scenario_tree_down_sample_fraction
  doc: The proportion of the scenarios in the scenario tree that are actually used.
    Specific scenarios are selected at random. Default is 1.0, indicating no down-sampling.
  type: string
  inputBinding:
    prefix: --scenario-tree-downsample-fraction
- id: cvar_weight
  doc: The weight associated with the CVaR term in the risk- weighted objective formulation.
    Default is 1.0. If the weight is 0, then *only* a non-weighted CVaR cost will
    appear in the EF objective - the expected cost component will be dropped.
  type: string
  inputBinding:
    prefix: --cvar-weight
- id: generate_weighted_cvar
  doc: Add a weighted CVaR term to the primary objective
  type: boolean
  inputBinding:
    prefix: --generate-weighted-cvar
- id: risk_alpha
  doc: The probability threshold associated with cvar (or any future) risk-oriented
    performance metrics. Default is 0.95.
  type: string
  inputBinding:
    prefix: --risk-alpha
- id: cc_alpha
  doc: The probability threshold associated with a chance constraint. The RHS will
    be one minus this value. Default is 0.
  type: string
  inputBinding:
    prefix: --cc-alpha
- id: cc_indicator_var
  doc: The name of the binary variable to be used to construct a chance constraint.
    Default is None, which indicates no chance constraint.
  type: string
  inputBinding:
    prefix: --cc-indicator-var
- id: mip_gap
  doc: Specifies the mipgap for the EF solve.
  type: string
  inputBinding:
    prefix: --mipgap
- id: solve
  doc: Following write of the extensive form model, solve it.
  type: boolean
  inputBinding:
    prefix: --solve
- id: solver
  doc: 'Specify the solver with which to solve the extensive form.  The following
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
- id: solver_options
  doc: Solver options for the extensive form problem.
  type: string
  inputBinding:
    prefix: --solver-options
- id: disable_warm_starts
  doc: Disable warm-starts of EF solves. Default is False.
  type: boolean
  inputBinding:
    prefix: --disable-warmstarts
- id: shutdown_pyro
  doc: Shut down all Pyro-related components associated with the Pyro solver manager
    (if specified), including the dispatch server, name server, and any mip servers.
    Default is False.
  type: boolean
  inputBinding:
    prefix: --shutdown-pyro
- id: output_file
  doc: The name of the extensive form output file (currently only LP and NL file formats
    are supported). If the option name does not end in '.lp' or '.nl', then the output
    format will be determined by the value of the --solver-io option, and the appropriate
    ending suffix will be added to the name. Default is 'efout'.
  type: string
  inputBinding:
    prefix: --output-file
- id: symbolic_solver_labels
  doc: When interfacing with the solver, use symbol names derived from the model.
    For example, "my_special_variable[1_2_3]" instead of "v1". Useful for debugging.
    When using the ASL interface (--solver- io=nl), generates corresponding .row (constraints)
    and .col (variables) files. The ordering in these files provides a mapping from
    ASL index to symbolic model names.
  type: boolean
  inputBinding:
    prefix: --symbolic-solver-labels
- id: output_solver_log
  doc: Output solver log during the extensive form solve.
  type: boolean
  inputBinding:
    prefix: --output-solver-log
- id: solution_writer
  doc: The plugin invoked to write the scenario tree solution. Defaults to the empty
    list.
  type: string
  inputBinding:
    prefix: --solution-writer
- id: verbose
  doc: Generate verbose output, beyond the usual status output. Default is False.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: output_times
  doc: Output timing statistics for various EF components
  type: boolean
  inputBinding:
    prefix: --output-times
- id: disable_gc
  doc: Disable the python garbage collecter. Default is False.
  type: boolean
  inputBinding:
    prefix: --disable-gc
- id: keep_solver_files
  doc: Retain temporary input and output files for solve.
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
- runef

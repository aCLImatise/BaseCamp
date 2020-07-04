version 1.0

task Runef {
  input {
    String? instance_directory
    String? model_directory
    String? objective_sense_stage_based
    String? scenario_tree_seed
    String? scenario_tree_down_sample_fraction
    String? cvar_weight
    Boolean? generate_weighted_cvar
    String? risk_alpha
    String? cc_alpha
    String? cc_indicator_var
    String? mip_gap
    Boolean? solve
    String? solver
    String? solver_io
    String? solver_manager
    String? solver_options
    Boolean? disable_warm_starts
    Boolean? shutdown_pyro
    String? output_file
    Boolean? symbolic_solver_labels
    Boolean? output_solver_log
    String? solution_writer
    Boolean? verbose
    Boolean? output_times
    Boolean? disable_gc
    Boolean? keep_solver_files
    String? profile
    Boolean? traceback
  }
  command <<<
    runef \
      ~{if defined(instance_directory) then ("--instance-directory " +  '"' + instance_directory + '"') else ""} \
      ~{if defined(model_directory) then ("--model-directory " +  '"' + model_directory + '"') else ""} \
      ~{if defined(objective_sense_stage_based) then ("--objective-sense-stage-based " +  '"' + objective_sense_stage_based + '"') else ""} \
      ~{if defined(scenario_tree_seed) then ("--scenario-tree-seed " +  '"' + scenario_tree_seed + '"') else ""} \
      ~{if defined(scenario_tree_down_sample_fraction) then ("--scenario-tree-downsample-fraction " +  '"' + scenario_tree_down_sample_fraction + '"') else ""} \
      ~{if defined(cvar_weight) then ("--cvar-weight " +  '"' + cvar_weight + '"') else ""} \
      ~{true="--generate-weighted-cvar" false="" generate_weighted_cvar} \
      ~{if defined(risk_alpha) then ("--risk-alpha " +  '"' + risk_alpha + '"') else ""} \
      ~{if defined(cc_alpha) then ("--cc-alpha " +  '"' + cc_alpha + '"') else ""} \
      ~{if defined(cc_indicator_var) then ("--cc-indicator-var " +  '"' + cc_indicator_var + '"') else ""} \
      ~{if defined(mip_gap) then ("--mipgap " +  '"' + mip_gap + '"') else ""} \
      ~{true="--solve" false="" solve} \
      ~{if defined(solver) then ("--solver " +  '"' + solver + '"') else ""} \
      ~{if defined(solver_io) then ("--solver-io " +  '"' + solver_io + '"') else ""} \
      ~{if defined(solver_manager) then ("--solver-manager " +  '"' + solver_manager + '"') else ""} \
      ~{if defined(solver_options) then ("--solver-options " +  '"' + solver_options + '"') else ""} \
      ~{true="--disable-warmstarts" false="" disable_warm_starts} \
      ~{true="--shutdown-pyro" false="" shutdown_pyro} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{true="--symbolic-solver-labels" false="" symbolic_solver_labels} \
      ~{true="--output-solver-log" false="" output_solver_log} \
      ~{if defined(solution_writer) then ("--solution-writer " +  '"' + solution_writer + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--output-times" false="" output_times} \
      ~{true="--disable-gc" false="" disable_gc} \
      ~{true="--keep-solver-files" false="" keep_solver_files} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{true="--traceback" false="" traceback}
  >>>
  parameter_meta {
    instance_directory: "The directory in which all instance (reference and scenario) definitions are stored. This option is required if no callback is found in the model file."
    model_directory: "The directory in which all model (reference and scenario) definitions are stored. Default is \".\"."
    objective_sense_stage_based: "The objective sense to use for the auto-generated scenario instance objective, which is equal to the sum of the scenario-tree stage costs. Default is None, indicating an Objective has been declared on the reference model."
    scenario_tree_seed: "The random seed associated with manipulation operations on the scenario tree (e.g., down-sampling). Default is 0, indicating unassigned."
    scenario_tree_down_sample_fraction: "The proportion of the scenarios in the scenario tree that are actually used. Specific scenarios are selected at random. Default is 1.0, indicating no down-sampling."
    cvar_weight: "The weight associated with the CVaR term in the risk- weighted objective formulation. Default is 1.0. If the weight is 0, then *only* a non-weighted CVaR cost will appear in the EF objective - the expected cost component will be dropped."
    generate_weighted_cvar: "Add a weighted CVaR term to the primary objective"
    risk_alpha: "The probability threshold associated with cvar (or any future) risk-oriented performance metrics. Default is 0.95."
    cc_alpha: "The probability threshold associated with a chance constraint. The RHS will be one minus this value. Default is 0."
    cc_indicator_var: "The name of the binary variable to be used to construct a chance constraint. Default is None, which indicates no chance constraint."
    mip_gap: "Specifies the mipgap for the EF solve."
    solve: "Following write of the extensive form model, solve it."
    solver: "Specify the solver with which to solve the extensive form.  The following solver types are currently supported: asl, baron, bilevel_blp_global, bilevel_blp_local, bilevel_ld, cbc, cplex, glpk, gurobi, mpec_minlp, mpec_nlp, openopt, os, path, pico, ps, py, scip, xpress; Default: cplex"
    solver_io: "The type of IO used to execute the solver.  Different solvers support different types of IO, but the following are common options: lp - generate LP files, nl - generate NL files, python - direct Python interface, os - generate OSiL XML files."
    solver_manager: "The type of solver manager used to coordinate scenario sub-problem solves. Default is serial."
    solver_options: "Solver options for the extensive form problem."
    disable_warm_starts: "Disable warm-starts of EF solves. Default is False."
    shutdown_pyro: "Shut down all Pyro-related components associated with the Pyro solver manager (if specified), including the dispatch server, name server, and any mip servers. Default is False."
    output_file: "The name of the extensive form output file (currently only LP and NL file formats are supported). If the option name does not end in '.lp' or '.nl', then the output format will be determined by the value of the --solver-io option, and the appropriate ending suffix will be added to the name. Default is 'efout'."
    symbolic_solver_labels: "When interfacing with the solver, use symbol names derived from the model. For example, \"my_special_variable[1_2_3]\" instead of \"v1\". Useful for debugging. When using the ASL interface (--solver- io=nl), generates corresponding .row (constraints) and .col (variables) files. The ordering in these files provides a mapping from ASL index to symbolic model names."
    output_solver_log: "Output solver log during the extensive form solve."
    solution_writer: "The plugin invoked to write the scenario tree solution. Defaults to the empty list."
    verbose: "Generate verbose output, beyond the usual status output. Default is False."
    output_times: "Output timing statistics for various EF components"
    disable_gc: "Disable the python garbage collecter. Default is False."
    keep_solver_files: "Retain temporary input and output files for solve."
    profile: "Enable profiling of Python code.  The value of this option is the number of functions that are summarized."
    traceback: "When an exception is thrown, show the entire call stack. Ignored if profiling is enabled. Default is False."
  }
}
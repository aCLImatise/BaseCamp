version 1.0

task Crnsimulator {
  input {
    Boolean? verbose
    File? log_file
    Boolean? force
    Boolean? dry_run
    String? name_ode_library
    Boolean? jacobian
    Int? t_zero
    Int? t_eight
    Int? pzero
    String? atol
    String? rtol
    Int? mx_step
    Int? t_lin
    Int? t_log
    Boolean? list_labels
    String? labels
    Boolean? labels_strict
    Boolean? n_xy
    Boolean? header
    File? py_plot
    String? py_plot_xlim
    String? py_plot_ylim
  }
  command <<<
    crnsimulator \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if defined(name_ode_library) then ("--output " +  '"' + name_ode_library + '"') else ""} \
      ~{if (jacobian) then "--jacobian" else ""} \
      ~{if defined(t_zero) then ("--t0 " +  '"' + t_zero + '"') else ""} \
      ~{if defined(t_eight) then ("--t8 " +  '"' + t_eight + '"') else ""} \
      ~{if defined(pzero) then ("--p0 " +  '"' + pzero + '"') else ""} \
      ~{if defined(atol) then ("--atol " +  '"' + atol + '"') else ""} \
      ~{if defined(rtol) then ("--rtol " +  '"' + rtol + '"') else ""} \
      ~{if defined(mx_step) then ("--mxstep " +  '"' + mx_step + '"') else ""} \
      ~{if defined(t_lin) then ("--t-lin " +  '"' + t_lin + '"') else ""} \
      ~{if defined(t_log) then ("--t-log " +  '"' + t_log + '"') else ""} \
      ~{if (list_labels) then "--list-labels" else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if (labels_strict) then "--labels-strict" else ""} \
      ~{if (n_xy) then "--nxy" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(py_plot) then ("--pyplot " +  '"' + py_plot + '"') else ""} \
      ~{if defined(py_plot_xlim) then ("--pyplot-xlim " +  '"' + py_plot_xlim + '"') else ""} \
      ~{if defined(py_plot_ylim) then ("--pyplot-ylim " +  '"' + py_plot_ylim + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/crnsimulator:0.9--pyh5bfb8f1_0"
  }
  parameter_meta {
    verbose: "Print logging output. (-vv increases verbosity.)\\n(default: 0)"
    log_file: "Redirect logging information to a file. (default: )"
    force: "Overwrite existing files (default: False)"
    dry_run: "Do not run the simulation, only write the files.\\n(default: False)"
    name_ode_library: "Name of ODE library files. (default: odesystem)"
    jacobian: "Symbolic calculation of Jacobi-Matrix. This may\\ngenerate a very large simulation file. (default:\\nFalse)"
    t_zero: "First time point of the time-course. (default: 0)"
    t_eight: "End point of simulation time. (default: 100)"
    pzero: "=<flt> [<int/str>=<flt> ...]\\nVector of initial species concentrations. E.g. \\\"--p0\\n1=0.5 3=0.7\\\" stands for 1st species at a concentration\\nof 0.5 and 3rd species at a concentration of 0.7. You\\nmay chose to address species directly by name, e.g.:\\n--p0 C=0.5. (default: None)"
    atol: "Specify absolute tolerance for the solver. (default:\\nNone)"
    rtol: "Specify relative tolerance for the solver. (default:\\nNone)"
    mx_step: "Maximum number of steps allowed for each integration\\npoint in t. (default: 0)"
    t_lin: "Returns --t-lin evenly spaced numbers on a linear\\nscale from --t0 to --t8. (default: 500)"
    t_log: "Returns --t-log evenly spaced numbers on a logarithmic\\nscale from --t0 to --t8. (default: None)"
    list_labels: "Print all species and exit. (default: False)"
    labels: "+ [<str>+ ...]\\nSpecify the (order of) species which should appear in\\nthe pyplot legend, as well as the order of species for\\nnxy output format. (default: [])"
    labels_strict: "When using pyplot, only plot tracjectories\\ncorresponding to labels, when using nxy, only print\\nthe trajectories corresponding to labels. (default:\\nFalse)"
    n_xy: "Print time course to STDOUT in nxy format. (default:\\nFalse)"
    header: "Print header for trajectories. (default: False)"
    py_plot: "Specify a filename to plot the ODE simulation.\\n(default: )"
    py_plot_xlim: "<flt>\\nSpecify the limits of the x-axis. (default: None)"
    py_plot_ylim: "<flt>\\nSpecify the limits of the y-axis. (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
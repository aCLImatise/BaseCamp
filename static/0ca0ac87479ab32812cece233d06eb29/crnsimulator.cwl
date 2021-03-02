class: CommandLineTool
id: crnsimulator.cwl
inputs:
- id: in_verbose
  doc: "Print logging output. (-vv increases verbosity.)\n(default: 0)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_log_file
  doc: 'Redirect logging information to a file. (default: )'
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_force
  doc: 'Overwrite existing files (default: False)'
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_dry_run
  doc: "Do not run the simulation, only write the files.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --dryrun
- id: in_output
  doc: 'Name of ODE library files. (default: odesystem)'
  type: string?
  inputBinding:
    prefix: --output
- id: in_jacobian
  doc: "Symbolic calculation of Jacobi-Matrix. This may\ngenerate a very large simulation\
    \ file. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --jacobian
- id: in_t_zero
  doc: 'First time point of the time-course. (default: 0)'
  type: long?
  inputBinding:
    prefix: --t0
- id: in_t_eight
  doc: 'End point of simulation time. (default: 100)'
  type: long?
  inputBinding:
    prefix: --t8
- id: in_pzero
  doc: "=<flt> [<int/str>=<flt> ...]\nVector of initial species concentrations. E.g.\
    \ \"--p0\n1=0.5 3=0.7\" stands for 1st species at a concentration\nof 0.5 and\
    \ 3rd species at a concentration of 0.7. You\nmay chose to address species directly\
    \ by name, e.g.:\n--p0 C=0.5. (default: None)"
  type: long?
  inputBinding:
    prefix: --p0
- id: in_atol
  doc: "Specify absolute tolerance for the solver. (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --atol
- id: in_rtol
  doc: "Specify relative tolerance for the solver. (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --rtol
- id: in_mx_step
  doc: "Maximum number of steps allowed for each integration\npoint in t. (default:\
    \ 0)"
  type: long?
  inputBinding:
    prefix: --mxstep
- id: in_t_lin
  doc: "Returns --t-lin evenly spaced numbers on a linear\nscale from --t0 to --t8.\
    \ (default: 500)"
  type: long?
  inputBinding:
    prefix: --t-lin
- id: in_t_log
  doc: "Returns --t-log evenly spaced numbers on a logarithmic\nscale from --t0 to\
    \ --t8. (default: None)"
  type: long?
  inputBinding:
    prefix: --t-log
- id: in_list_labels
  doc: 'Print all species and exit. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --list-labels
- id: in_labels
  doc: "+ [<str>+ ...]\nSpecify the (order of) species which should appear in\nthe\
    \ pyplot legend, as well as the order of species for\nnxy output format. (default:\
    \ [])"
  type: string?
  inputBinding:
    prefix: --labels
- id: in_labels_strict
  doc: "When using pyplot, only plot tracjectories\ncorresponding to labels, when\
    \ using nxy, only print\nthe trajectories corresponding to labels. (default:\n\
    False)"
  type: boolean?
  inputBinding:
    prefix: --labels-strict
- id: in_n_xy
  doc: "Print time course to STDOUT in nxy format. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --nxy
- id: in_header
  doc: 'Print header for trajectories. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_py_plot
  doc: "Specify a filename to plot the ODE simulation.\n(default: )"
  type: File?
  inputBinding:
    prefix: --pyplot
- id: in_py_plot_xlim
  doc: "<flt>\nSpecify the limits of the x-axis. (default: None)"
  type: string?
  inputBinding:
    prefix: --pyplot-xlim
- id: in_py_plot_ylim
  doc: "<flt>\nSpecify the limits of the y-axis. (default: None)\n"
  type: string?
  inputBinding:
    prefix: --pyplot-ylim
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/crnsimulator:0.9--pyh5bfb8f1_0
cwlVersion: v1.1
baseCommand:
- crnsimulator

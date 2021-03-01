class: CommandLineTool
id: eval_dualdecomp.pl.cwl
inputs:
- id: in_intput_augustus_file
  doc: intput AUGUSTUS file
  type: File?
  inputBinding:
    prefix: --f
- id: in_directory_input_augustus
  doc: directory of input AUGUSTUS files (recognized by .out file extension)
  type: File?
  inputBinding:
    prefix: --d
- id: in_hist_iterations
  doc: output histogram of iterations to out.pdf
  type: string?
  inputBinding:
    prefix: --hist_iterations
- id: in_hist_errors
  doc: "output histogram of error estimates to out.pdf for all cases, where\nno convergence\
    \ is achieved."
  type: string?
  inputBinding:
    prefix: --hist_errors
- id: in_err_per_iter
  doc: "plots the average percentage of initial error against the iterations to out.pdf.\n\
    If after a certain number of iterations the error no further drops,\nearly stopping\
    \ is recommended, i.e. in the next run, the number of\nDD iterations can be restricted\
    \ to this number of iterations."
  type: long?
  inputBinding:
    prefix: --err_per_iter
- id: in_threshold_evolution_helps
  doc: "threshold for percentage of initial error. For all cases with an estimated\n\
    error higher than this threshold, the evolution of primal an dual values\nare\
    \ plotted against the iterations. This helps debugging cases with a\nhigh error\
    \ estimate. The threshold is between [0-100] (default: 5)"
  type: long?
  inputBinding:
    prefix: --t
- id: in_outdir
  doc: put all plots in this output directory
  type: Directory?
  inputBinding:
    prefix: --outdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: put all plots in this output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- eval_dualdecomp.pl

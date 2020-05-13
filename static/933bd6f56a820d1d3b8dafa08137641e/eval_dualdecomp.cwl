class: CommandLineTool
id: eval_dualdecomp.pl.cwl
inputs:
- id: f
  doc: 'intput AUGUSTUS file '
  type: File
  inputBinding:
    prefix: --f
- id: d
  doc: directory of input AUGUSTUS files (recognized by .out file extension)
  type: string
  inputBinding:
    prefix: --d
- id: hist_iterations
  doc: output histogram of iterations to out.pdf
  type: string
  inputBinding:
    prefix: --hist_iterations
- id: hist_errors
  doc: output histogram of error estimates to out.pdf for all cases, where no convergence
    is achieved.
  type: string
  inputBinding:
    prefix: --hist_errors
- id: err_per_iter
  doc: plots the average percentage of initial error against the iterations to out.pdf.
    If after a certain number of iterations the error no further drops,  early stopping
    is recommended, i.e. in the next run, the number of  DD iterations can be restricted
    to this number of iterations.
  type: string
  inputBinding:
    prefix: --err_per_iter
- id: t
  doc: 'threshold for percentage of initial error. For all cases with an estimated
    error higher than this threshold, the evolution of primal an dual values are plotted
    against the iterations. This helps debugging cases with a high error estimate.
    The threshold is between [0-100] (default: 5)'
  type: string
  inputBinding:
    prefix: --t
- id: outdir
  doc: put all plots in this output directory
  type: string
  inputBinding:
    prefix: --outdir
outputs: []
cwlVersion: v1.1
baseCommand:
- eval_dualdecomp.pl

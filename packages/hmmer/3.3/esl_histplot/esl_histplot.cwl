class: CommandLineTool
id: ../../../esl_histplot.cwl
inputs:
- id: in_output_file_plot
  doc: ': output file for plot (default is stdout)'
  type: File
  inputBinding:
    prefix: -o
- id: in_input_file_binary
  doc: ': input file is binary, array of doubles'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_field_read_text
  doc: ': which field to read on text line (1..n)  [1]  (n>0)'
  type: long
  inputBinding:
    prefix: -f
- id: in_bin_size_histogram
  doc: ': bin size for histogram  [1.0]'
  type: long
  inputBinding:
    prefix: -w
- id: in_min
  doc: ': initial lower bound of histogram  [-100.]'
  type: long
  inputBinding:
    prefix: --min
- id: in_max
  doc: ': initial upper bound of histogram  [100.]'
  type: long
  inputBinding:
    prefix: --max
- id: in_surv
  doc: ': output survival plot, not histogram'
  type: boolean
  inputBinding:
    prefix: --surv
- id: in_gumbel
  doc: ': fit data to a Gumbel distribution'
  type: boolean
  inputBinding:
    prefix: --gumbel
- id: in_exp_tail
  doc: ': fit tail to an exponential distribution'
  type: boolean
  inputBinding:
    prefix: --exptail
- id: in_gev
  doc: ': fit data to a generalized EVD (Frechet or Weibull)'
  type: boolean
  inputBinding:
    prefix: --gev
- id: in_normal
  doc: ': fit data to a normal (Gaussian) distribution'
  type: boolean
  inputBinding:
    prefix: --normal
- id: in_trunc
  doc: ': with --gumbel, specify data are truncated, min value is <x>'
  type: long
  inputBinding:
    prefix: --trunc
- id: in_gum_loc
  doc: ': fit data to a Gumbel distribution w/ known lambda'
  type: boolean
  inputBinding:
    prefix: --gumloc
- id: in_exp_tail_loc
  doc: ': fit tail to an exponential tail w/ known lambda'
  type: boolean
  inputBinding:
    prefix: --exptailloc
- id: in_show_gum
  doc: ': plot a known Gumbel for comparison'
  type: boolean
  inputBinding:
    prefix: --showgum
- id: in_show_exp
  doc: ': plot a known exponential tail for comparison'
  type: boolean
  inputBinding:
    prefix: --showexp
- id: in_show_gev
  doc: ': plot a known GEV for comparison'
  type: boolean
  inputBinding:
    prefix: --showgev
- id: in_alpha
  doc: ': set known alpha (GEV shape parameter)  [0.0]'
  type: double
  inputBinding:
    prefix: --alpha
- id: in_lambda
  doc: ': set known lambda  [0.693]'
  type: double
  inputBinding:
    prefix: --lambda
- id: in_mu
  doc: ': set known mu  [0.0]'
  type: double
  inputBinding:
    prefix: --mu
- id: in_set_tail_mass
  doc: ': set tail mass to fit to  [0.01]'
  type: double
  inputBinding:
    prefix: -t
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_plot
  doc: ': output file for plot (default is stdout)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_plot)
cwlVersion: v1.1
baseCommand:
- esl-histplot

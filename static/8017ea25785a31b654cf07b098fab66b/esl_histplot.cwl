class: CommandLineTool
id: esl_histplot.cwl
inputs:
- id: o
  doc: ': output file for plot (default is stdout)'
  type: string
  inputBinding:
    prefix: -o
- id: b
  doc: ': input file is binary, array of doubles'
  type: boolean
  inputBinding:
    prefix: -b
- id: f
  doc: ': which field to read on text line (1..n)  [1]  (n>0)'
  type: string
  inputBinding:
    prefix: -f
- id: w
  doc: ': bin size for histogram  [1.0]'
  type: string
  inputBinding:
    prefix: -w
- id: min
  doc: ': initial lower bound of histogram  [-100.]'
  type: string
  inputBinding:
    prefix: --min
- id: max
  doc: ': initial upper bound of histogram  [100.]'
  type: string
  inputBinding:
    prefix: --max
- id: surv
  doc: ': output survival plot, not histogram'
  type: boolean
  inputBinding:
    prefix: --surv
- id: gumbel
  doc: ': fit data to a Gumbel distribution'
  type: boolean
  inputBinding:
    prefix: --gumbel
- id: exp_tail
  doc: ': fit tail to an exponential distribution'
  type: boolean
  inputBinding:
    prefix: --exptail
- id: gev
  doc: ': fit data to a generalized EVD (Frechet or Weibull)'
  type: boolean
  inputBinding:
    prefix: --gev
- id: normal
  doc: ': fit data to a normal (Gaussian) distribution'
  type: boolean
  inputBinding:
    prefix: --normal
- id: trunc
  doc: ': with --gumbel, specify data are truncated, min value is <x>'
  type: string
  inputBinding:
    prefix: --trunc
- id: gum_loc
  doc: ': fit data to a Gumbel distribution w/ known lambda'
  type: boolean
  inputBinding:
    prefix: --gumloc
- id: exp_tail_loc
  doc: ': fit tail to an exponential tail w/ known lambda'
  type: boolean
  inputBinding:
    prefix: --exptailloc
- id: show_gum
  doc: ': plot a known Gumbel for comparison'
  type: boolean
  inputBinding:
    prefix: --showgum
- id: show_exp
  doc: ': plot a known exponential tail for comparison'
  type: boolean
  inputBinding:
    prefix: --showexp
- id: show_gev
  doc: ': plot a known GEV for comparison'
  type: boolean
  inputBinding:
    prefix: --showgev
- id: alpha
  doc: ': set known alpha (GEV shape parameter)  [0.0]'
  type: string
  inputBinding:
    prefix: --alpha
- id: lambda
  doc: ': set known lambda  [0.693]'
  type: string
  inputBinding:
    prefix: --lambda
- id: mu
  doc: ': set known mu  [0.0]'
  type: string
  inputBinding:
    prefix: --mu
- id: t
  doc: ': set tail mass to fit to  [0.01]'
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-histplot

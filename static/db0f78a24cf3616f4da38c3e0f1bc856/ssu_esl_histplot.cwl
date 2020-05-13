class: CommandLineTool
id: ssu_esl_histplot.cwl
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
- id: trunc
  doc: ': with --gumbel, specify data is truncated, min value is <x>'
  type: string
  inputBinding:
    prefix: --trunc
- id: exp_tail
  doc: ': fit tail to an exponential distribution'
  type: boolean
  inputBinding:
    prefix: --exptail
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
- ssu-esl-histplot

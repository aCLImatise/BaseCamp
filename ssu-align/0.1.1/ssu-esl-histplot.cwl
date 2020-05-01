#!/usr/bin/env cwl-runner

baseCommand:
- ssu-esl-histplot
class: CommandLineTool
cwlVersion: v1.0
id: ssu-esl-histplot
inputs:
- doc: ': output file for plot (default is stdout)'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': input file is binary, array of doubles'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: ': which field to read on text line (1..n)  [1]  (n>0)'
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: ': bin size for histogram  [1.0]'
  id: w
  inputBinding:
    prefix: -w
  type: string
- doc: ': initial lower bound of histogram  [-100.]'
  id: min
  inputBinding:
    prefix: --min
  type: string
- doc: ': initial upper bound of histogram  [100.]'
  id: max
  inputBinding:
    prefix: --max
  type: string
- doc: ': output survival plot, not histogram'
  id: surv
  inputBinding:
    prefix: --surv
  type: boolean
- doc: ': fit data to a Gumbel distribution'
  id: gumbel
  inputBinding:
    prefix: --gumbel
  type: boolean
- doc: ': with --gumbel, specify data is truncated, min value is <x>'
  id: trunc
  inputBinding:
    prefix: --trunc
  type: string
- doc: ': fit tail to an exponential distribution'
  id: exp_tail
  inputBinding:
    prefix: --exptail
  type: boolean
- doc: ': fit data to a Gumbel distribution w/ known lambda'
  id: gum_loc
  inputBinding:
    prefix: --gumloc
  type: boolean
- doc: ': fit tail to an exponential tail w/ known lambda'
  id: exp_tail_loc
  inputBinding:
    prefix: --exptailloc
  type: boolean
- doc: ': plot a known Gumbel for comparison'
  id: show_gum
  inputBinding:
    prefix: --showgum
  type: boolean
- doc: ': plot a known exponential tail for comparison'
  id: show_exp
  inputBinding:
    prefix: --showexp
  type: boolean
- doc: ': set known lambda  [0.693]'
  id: lambda
  inputBinding:
    prefix: --lambda
  type: string
- doc: ': set known mu  [0.0]'
  id: mu
  inputBinding:
    prefix: --mu
  type: string
- doc: ': set tail mass to fit to  [0.01]'
  id: t
  inputBinding:
    prefix: -t
  type: string

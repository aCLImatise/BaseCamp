#!/usr/bin/env cwl-runner

baseCommand:
- esl-shuffle
class: CommandLineTool
cwlVersion: v1.0
id: esl-shuffle
inputs:
- doc: ': direct output data to file <f>'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': generate <n> samples (per input seq/msa)  [1]  (n>0)'
  id: n
  inputBinding:
    prefix: -N
  type: string
- doc: ': truncate outputs to length <n>  [0]  (n>=0)'
  id: l
  inputBinding:
    prefix: -L
  type: string
- doc: ': reverse each input'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: ': regionally shuffle inputs in window size <n>  (n>0)'
  id: w
  inputBinding:
    prefix: -w
  type: string
- doc: ': take bootstrapping samples'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: ': shuffle residues in each column independently'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': generate RNA sequence  [default]'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: ': generate DNA sequence'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': generate protein sequence'
  id: amino
  inputBinding:
    prefix: --amino
  type: boolean
- doc: ": set random number generator's seed to <n>  [0]  (n>=0)"
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: ': specify that input file is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string

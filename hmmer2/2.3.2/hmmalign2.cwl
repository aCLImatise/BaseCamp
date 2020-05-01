#!/usr/bin/env cwl-runner

baseCommand:
- hmmalign2
class: CommandLineTool
cwlVersion: v1.0
id: hmmalign2
inputs:
- doc: ''
  id: hmm_align
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: hmm_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: sequence_file
  inputBinding:
    position: 2
  type: string
- doc: ': only print symbols aligned to match states'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: ': save alignment in file <f>'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': quiet - suppress verbose banner'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: ': sequence file is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': include alignment in file <f> using map in HMM'
  id: map_ali
  inputBinding:
    prefix: --mapali
  type: string
- doc: ': output Stockholm fmt with 1 line/seq, not interleaved'
  id: one_line
  inputBinding:
    prefix: --oneline
  type: boolean
- doc: ': output alignment in format <s> [default: Stockholm] formats include: MSF,
    Clustal, Phylip, SELEX'
  id: out_format
  inputBinding:
    prefix: --outformat
  type: string
- doc: ': include alignment to (fixed) alignment in file <f>'
  id: with_ali
  inputBinding:
    prefix: --withali
  type: string

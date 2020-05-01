#!/usr/bin/env cwl-runner

baseCommand:
- esl-translate
class: CommandLineTool
cwlVersion: v1.0
id: esl-translate
inputs:
- doc: ': use alt genetic code of NCBI transl table <n>  [1]'
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: ': minimum ORF length  [20]'
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: ': ORFs must initiate with AUG only'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: ': ORFs must start with allowed initiation codon'
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: ': use windowed, memory-efficient seq reading'
  id: w
  inputBinding:
    prefix: -W
  type: boolean
- doc: ': specify that input file is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': only translate top strand'
  id: watson
  inputBinding:
    prefix: --watson
  type: boolean
- doc: ': only translate bottom strand'
  id: crick
  inputBinding:
    prefix: --crick
  type: boolean

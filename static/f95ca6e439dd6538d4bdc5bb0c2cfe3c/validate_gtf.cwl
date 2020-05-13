class: CommandLineTool
id: validate_gtf.pl.cwl
inputs:
- id: s
  doc: ': output list of inframe stop genes.'
  type: boolean
  inputBinding:
    prefix: -s
- id: c
  doc: ': suppress warnings about missing start/stop'
  type: boolean
  inputBinding:
    prefix: -c
- id: p
  doc: ': suppress warnings about bad splice site sequence'
  type: boolean
  inputBinding:
    prefix: -p
- id: k
  doc: ': output a list of bad genes for "super-clean" training set'
  type: boolean
  inputBinding:
    prefix: -k
- id: l
  doc: ': output a list of bad genes for training applications'
  type: boolean
  inputBinding:
    prefix: -l
- id: m
  doc: ': output a list of bad genes for evaluation purposes'
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- validate_gtf.pl

class: CommandLineTool
id: ../../../validate_gtf.pl.cwl
inputs:
- id: output_list_inframe
  doc: ': output list of inframe stop genes.'
  type: boolean
  inputBinding:
    prefix: -s
- id: suppress_warnings_missing
  doc: ': suppress warnings about missing start/stop'
  type: boolean
  inputBinding:
    prefix: -c
- id: suppress_warnings_bad
  doc: ': suppress warnings about bad splice site sequence'
  type: boolean
  inputBinding:
    prefix: -p
- id: output_list_
  doc: ': output a list of bad genes for "super-clean" training set'
  type: boolean
  inputBinding:
    prefix: -k
- id: output_list_training
  doc: ': output a list of bad genes for training applications'
  type: boolean
  inputBinding:
    prefix: -l
- id: output_list_evaluation
  doc: ': output a list of bad genes for evaluation purposes'
  type: boolean
  inputBinding:
    prefix: -m
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- validate_gtf.pl

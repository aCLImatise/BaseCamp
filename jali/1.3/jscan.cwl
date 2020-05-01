#!/usr/bin/env cwl-runner

baseCommand:
- jscan
class: CommandLineTool
cwlVersion: v1.0
id: jscan
inputs:
- doc: ''
  id: sequence_fast_a
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: alignment_db_prodom
  inputBinding:
    position: 1
  type: string
- doc: //amino acid similarity matrix
  id: w
  inputBinding:
    prefix: -w
  type: string
- doc: //must be smaller or equal to zero
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: //must be smaller or equal to zero
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: //must be smaller or equal to zero
  id: j
  inputBinding:
    prefix: -j
  type: string
- doc: //print best l scores
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: //run in verbose mode
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: //print version
  id: v
  inputBinding:
    prefix: -v
  type: boolean

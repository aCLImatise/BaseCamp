#!/usr/bin/env cwl-runner

baseCommand:
- jsearch
class: CommandLineTool
cwlVersion: v1.0
id: jsearch
inputs:
- doc: ''
  id: sequence_db_fast_a
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: alignment_fast_a
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

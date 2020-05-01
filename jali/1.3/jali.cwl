#!/usr/bin/env cwl-runner

baseCommand:
- jali
class: CommandLineTool
cwlVersion: v1.0
id: jali
inputs:
- doc: ''
  id: sequence_fast_a
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
- doc: //0:ASCII (default) 1:HTML 2:double-spaced HTML
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: //print alignment
  id: p
  inputBinding:
    prefix: -p
  type: boolean
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

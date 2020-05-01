#!/usr/bin/env cwl-runner

baseCommand:
- wgsim
class: CommandLineTool
cwlVersion: v1.0
id: wgsim
inputs:
- doc: ''
  id: in_reff_a
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: out_read_1fq
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: out_read_2fq
  inputBinding:
    position: 2
  type: string
- doc: rate of mutations [0.0010]
  id: r
  inputBinding:
    prefix: -r
  type: double
- doc: fraction of indels [0.15]
  id: r
  inputBinding:
    prefix: -R
  type: double
- doc: probability an indel is extended [0.30]
  id: x
  inputBinding:
    prefix: -X
  type: double
- doc: seed for random generator [0, use the current time]
  id: s
  inputBinding:
    prefix: -S
  type: long
- doc: discard if the fraction of ambiguous bases higher than FLOAT [0.05]
  id: a
  inputBinding:
    prefix: -A
  type: double

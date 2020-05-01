#!/usr/bin/env cwl-runner

baseCommand:
- fastqToFa
class: CommandLineTool
cwlVersion: v1.0
id: fastqtofa
inputs:
- doc: ''
  id: in_fast_q
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: out_fa
  inputBinding:
    position: 1
  type: string
- doc: =2 - set warning level to get some stats output during processing
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean

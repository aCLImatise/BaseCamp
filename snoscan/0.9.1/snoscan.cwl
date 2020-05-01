#!/usr/bin/env cwl-runner

baseCommand:
- snoscan
class: CommandLineTool
cwlVersion: v1.0
id: snoscan
inputs:
- doc: ''
  id: rrna_sequence_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: query_sequence_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: options
  inputBinding:
    prefix: -options
  type: boolean

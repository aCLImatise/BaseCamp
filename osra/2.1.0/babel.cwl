#!/usr/bin/env cwl-runner

baseCommand:
- babel
class: CommandLineTool
cwlVersion: v1.0
id: babel
inputs:
- doc: ''
  id: input_type
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: name
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: output_type
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: name
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: boolean

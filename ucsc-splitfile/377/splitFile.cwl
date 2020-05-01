#!/usr/bin/env cwl-runner

baseCommand:
- splitFile
class: CommandLineTool
cwlVersion: v1.0
id: splitfile
inputs:
- doc: ''
  id: source
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: lines_per_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: out_basename
  inputBinding:
    position: 2
  type: string
- doc: in front of each output
  id: head
  inputBinding:
    prefix: -head
  type: File
- doc: at end of each output
  id: tail
  inputBinding:
    prefix: -tail
  type: File

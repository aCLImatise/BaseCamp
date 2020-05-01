#!/usr/bin/env cwl-runner

baseCommand:
- eufindtRNA
class: CommandLineTool
cwlVersion: v1.0
id: eufindtrna
inputs:
- doc: ''
  id: sequence_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: options
  inputBinding:
    prefix: -options
  type: boolean

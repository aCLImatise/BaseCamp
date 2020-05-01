#!/usr/bin/env cwl-runner

baseCommand:
- mglroundtrip
class: CommandLineTool
cwlVersion: v1.0
id: mglroundtrip
inputs:
- doc: ''
  id: round_trip
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: file_1
  inputBinding:
    position: 1
  type: File
- doc: ''
  id: file_2
  inputBinding:
    position: 2
  type: File

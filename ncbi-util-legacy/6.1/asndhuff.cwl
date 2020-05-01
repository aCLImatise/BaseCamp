#!/usr/bin/env cwl-runner

baseCommand:
- asndhuff
class: CommandLineTool
cwlVersion: v1.0
id: asndhuff
inputs:
- doc: Input file [File In]
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: Output file [File Out]  Optional
  id: o
  inputBinding:
    prefix: -o
  type: boolean

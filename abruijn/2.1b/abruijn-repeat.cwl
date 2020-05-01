#!/usr/bin/env cwl-runner

baseCommand:
- abruijn-repeat
class: CommandLineTool
cwlVersion: v1.0
id: abruijn-repeat
inputs:
- doc: path to output assembly
  id: out_assembly
  inputBinding:
    position: 0
  type: string
- doc: 'k-mer size [default = 15] '
  id: k
  inputBinding:
    prefix: -k
  type: string
- doc: 'minimum overlap between reads [default = 5000] '
  id: v
  inputBinding:
    prefix: -v
  type: long
- doc: 'enable debug output [default = false] '
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: 'output log to file [default = not set] '
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: 'number of parallel threads [default = 1] '
  id: t
  inputBinding:
    prefix: -t
  type: string

#!/usr/bin/env cwl-runner

baseCommand:
- abruijn-assemble
class: CommandLineTool
cwlVersion: v1.0
id: abruijn-assemble
inputs:
- doc: path to output file
  id: out_assembly
  inputBinding:
    position: 0
  type: string
- doc: estimated assembly coverage
  id: coverage
  inputBinding:
    position: 1
  type: string
- doc: 'k-mer size [default = 15] '
  id: k
  inputBinding:
    prefix: -k
  type: string
- doc: 'minimum k-mer coverage [default = auto] '
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: 'maximum k-mer coverage [default = auto] '
  id: x
  inputBinding:
    prefix: -x
  type: long
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
- doc: 'store/load overlaps to/from file [default = not set] '
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: 'number of parallel threads [default = 1] '
  id: t
  inputBinding:
    prefix: -t
  type: string

#!/usr/bin/env cwl-runner

baseCommand:
- junccomp
class: CommandLineTool
cwlVersion: v1.0
id: junccomp
inputs:
- doc: 'table A (default: None)'
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: 'table B (default: None)'
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: "Output directory, default='junccomp_out' (default: junccomp_out)"
  id: o
  inputBinding:
    prefix: -o
  type: string

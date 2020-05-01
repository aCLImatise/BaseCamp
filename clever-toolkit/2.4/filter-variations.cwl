#!/usr/bin/env cwl-runner

baseCommand:
- filter-variations
class: CommandLineTool
cwlVersion: v1.0
id: filter-variations
inputs:
- doc: ''
  id: variants_file
  inputBinding:
    position: 0
  type: string
- doc: '[ --max_offset ] arg (=100)     Maximum allowed distance.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --max_length_diff ] arg (=20) Maximum allowed length difference.'
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: '[ --min_length ] arg (=10)      Minimum length of variations to be  written.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean

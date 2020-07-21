class: CommandLineTool
id: ../../../lexmapr_input_file.cwl
inputs:
- id: o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: no_cache
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-cache
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: lex_map_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- lexmapr
- input_file

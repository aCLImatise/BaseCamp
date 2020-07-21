class: CommandLineTool
id: ../../../clan_search.cwl
inputs:
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
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
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: read_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: reference_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: index_prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- clan_search

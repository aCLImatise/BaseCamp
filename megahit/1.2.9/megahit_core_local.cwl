class: CommandLineTool
id: megahit_core_local.cwl
inputs:
- id: local
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- megahit_core
- local

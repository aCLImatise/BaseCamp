class: CommandLineTool
id: ../../../megahit_core_local.cwl
inputs:
- id: sparsity
  doc: (=8)                sparsity of hash mapper
  type: string
  inputBinding:
    prefix: --sparsity
- id: similarity
  doc: (=0.8)            alignment similarity threshold
  type: string
  inputBinding:
    prefix: --similarity
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
- id: local
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- megahit_core
- local

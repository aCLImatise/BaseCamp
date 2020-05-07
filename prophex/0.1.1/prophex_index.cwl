class: CommandLineTool
id: prophex_index.cwl
inputs:
- id: idx_base
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: k
  doc: k-mer length for k-LCP
  type: long
  inputBinding:
    prefix: -k
- id: s
  doc: construct k-LCP and SA in parallel
  type: boolean
  inputBinding:
    prefix: -s
- id: i
  doc: sampling distance for SA
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- prophex
- index

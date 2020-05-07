class: CommandLineTool
id: ppanini_cluster2genes.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: json
  doc: ''
  type: boolean
  inputBinding:
    prefix: --json
outputs: []
cwlVersion: v1.1
baseCommand:
- ppanini_cluster2genes

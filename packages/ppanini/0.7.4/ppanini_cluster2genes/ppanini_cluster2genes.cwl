class: CommandLineTool
id: ppanini_cluster2genes.cwl
inputs:
- id: in_json
  doc: ''
  type: boolean
  inputBinding:
    prefix: --json
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ppanini_cluster2genes

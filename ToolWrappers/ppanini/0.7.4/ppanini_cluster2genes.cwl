class: CommandLineTool
id: ppanini_cluster2genes.cwl
inputs:
- id: in_cd_hit
  doc: CD-HIT clusters output
  type: string?
  inputBinding:
    prefix: --cd-hit
- id: in_json
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --json
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ppanini_cluster2genes

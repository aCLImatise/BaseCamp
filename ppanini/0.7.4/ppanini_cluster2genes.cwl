class: CommandLineTool
id: ../../../ppanini_cluster2genes.cwl
inputs:
- id: in_cd_hit
  doc: CD-HIT clusters output
  type: string
  inputBinding:
    prefix: --cd-hit
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: in_json
  doc: ''
  type: boolean
  inputBinding:
    prefix: --json
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ppanini_cluster2genes

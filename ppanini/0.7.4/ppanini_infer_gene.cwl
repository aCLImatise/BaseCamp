class: CommandLineTool
id: ../../../ppanini_infer_gene.cwl
inputs:
- id: output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: min_per_cid
  doc: ''
  type: long
  inputBinding:
    prefix: --min-percid
outputs: []
cwlVersion: v1.1
baseCommand:
- ppanini_infer_gene

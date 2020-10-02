class: CommandLineTool
id: ppanini_infer_gene.cwl
inputs:
- id: in_min_q_cover
  doc: "[--all-valid-hits]\nhits"
  type: long
  inputBinding:
    prefix: --min-qcover
- id: in_min_per_cid
  doc: ''
  type: long
  inputBinding:
    prefix: --min-percid
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ppanini_infer_gene

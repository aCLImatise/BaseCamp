class: CommandLineTool
id: transposcope_align_sample_id.cwl
inputs:
- id: in_group_one
  doc: ''
  type: long?
  inputBinding:
    prefix: --group1
- id: in_genes
  doc: ''
  type: string?
  inputBinding:
    prefix: --genes
- id: in_transpo_scope
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_align
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- transposcope
- align
- sample_id

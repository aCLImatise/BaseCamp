class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/axtToPsl.cwl
inputs:
- id: in_do_tax_t
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: t_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: q_sizes
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- axtToPsl

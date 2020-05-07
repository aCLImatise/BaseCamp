class: CommandLineTool
id: axtToPsl_in.axt_qSizes.cwl
inputs:
- id: t_sizes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: q_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- axtToPsl
- in.axt
- qSizes

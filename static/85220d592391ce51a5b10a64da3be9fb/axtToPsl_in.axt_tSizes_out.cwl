class: CommandLineTool
id: axtToPsl_in.axt_tSizes_out.psl.cwl
inputs:
- id: q_sizes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- axtToPsl
- in.axt
- tSizes
- out.psl
